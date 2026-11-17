/**
 * Interrupting steer: send a message that cuts off the current response instead of waiting for
 * the running tool calls to finish (pi's default Enter-while-streaming behaviour).
 *
 *   ctrl+enter          Interrupt with the editor contents (plus anything already queued).
 *                       When idle it just submits.
 *   /interrupt <msg>    Same, as a command (works in any terminal / over RPC).
 *   /interrupt-mode     Toggle whether plain Enter interrupts while pi is working
 *                       (/interrupt-mode on|off to set explicitly). Off by default.
 *
 * Interrupting aborts the turn like Escape does: the partial response and any finished tool
 * results are kept in the session, queued steering/follow-up messages are pulled back and sent
 * together with the new message.
 */
import type { ImageContent, TextContent } from "@earendil-works/pi-ai";
import type {
  ExtensionAPI,
  ExtensionContext,
} from "@earendil-works/pi-coding-agent";

const SHORTCUT = "ctrl+enter";
const ENTER_INTERRUPTS_BY_DEFAULT = false;
const IDLE_TIMEOUT_MS = 30_000;

const sleep = (ms: number) => new Promise((r) => setTimeout(r, ms));

async function waitUntilIdle(ctx: ExtensionContext): Promise<boolean> {
  const deadline = Date.now() + IDLE_TIMEOUT_MS;
  while (!ctx.isIdle()) {
    if (Date.now() > deadline) return false;
    await sleep(20);
  }
  return true;
}

// The extension is re-instantiated on every session switch; keep the toggle for the process.
const state = ((globalThis as any).__piInterruptSteer ??= {
  enterInterrupts: ENTER_INTERRUPTS_BY_DEFAULT,
}) as {
  enterInterrupts: boolean;
};

export default function (pi: ExtensionAPI) {
  let busy = false;

  function updateStatus(ctx: ExtensionContext) {
    if (!ctx.hasUI) return;
    ctx.ui.setStatus(
      "interrupt-steer",
      state.enterInterrupts
        ? ctx.ui.theme.fg("warning", "⏎ interrupts")
        : undefined,
    );
  }

  /**
   * Abort the running turn and send `text` once pi is idle. With `fromEditor`, the text is
   * whatever ends up in the editor after the abort (pi restores queued messages there, ahead of
   * what was being typed); otherwise queued messages are prepended to `text`.
   */
  async function interrupt(
    ctx: ExtensionContext,
    text: string,
    images?: ImageContent[],
    fromEditor = false,
  ) {
    if (busy) return;
    busy = true;
    try {
      if (!ctx.isIdle()) {
        ctx.abort();
        if (!(await waitUntilIdle(ctx))) {
          ctx.ui.notify("Timed out waiting for the agent to stop", "error");
          return;
        }
      }

      let message = text;
      if (ctx.hasUI) {
        const editorText = ctx.ui.getEditorText();
        if (fromEditor) {
          message = editorText;
        } else if (editorText.trim()) {
          // Abort restored queued steering/follow-ups into the editor; send them along.
          message = [editorText, text].filter((t) => t.trim()).join("\n\n");
        }
        ctx.ui.setEditorText("");
      }
      if (!message.trim() && !images?.length) return;

      const content: (TextContent | ImageContent)[] = [
        { type: "text", text: message },
        ...(images ?? []),
      ];
      pi.sendUserMessage(images?.length ? content : message, {
        expandPromptTemplates: true,
      });
    } finally {
      busy = false;
    }
  }

  pi.on("session_start", (_event, ctx) => updateStatus(ctx));

  // Plain Enter while streaming → interrupt, when interrupt mode is on.
  pi.on("input", (event, ctx) => {
    if (
      !state.enterInterrupts ||
      event.source !== "interactive" ||
      event.streamingBehavior !== "steer"
    ) {
      return { action: "continue" };
    }
    void interrupt(ctx, event.text, event.images);
    return { action: "handled" };
  });

  pi.registerShortcut(SHORTCUT, {
    description: "Send message, interrupting the current response",
    handler: async (ctx) => {
      // With an empty editor this still aborts and sends whatever was queued.
      if (ctx.hasUI) await interrupt(ctx, "", undefined, true);
    },
  });

  pi.registerCommand("interrupt", {
    description: "Interrupt the current response and send a message now",
    handler: async (args, ctx) => {
      await interrupt(ctx, args);
    },
  });

  pi.registerCommand("interrupt-mode", {
    description:
      "Toggle whether Enter interrupts the agent while it is working (on|off)",
    getArgumentCompletions: (prefix) =>
      ["on", "off"]
        .filter((v) => v.startsWith(prefix))
        .map((v) => ({ value: v, label: v })),
    handler: async (args, ctx) => {
      const arg = args.trim().toLowerCase();
      state.enterInterrupts =
        arg === "on" ? true : arg === "off" ? false : !state.enterInterrupts;
      updateStatus(ctx);
      ctx.ui.notify(
        state.enterInterrupts
          ? "Enter now interrupts the agent (alt+enter still queues a follow-up)"
          : `Enter queues steering again (${SHORTCUT} or /interrupt to interrupt)`,
        "info",
      );
    },
  });
}

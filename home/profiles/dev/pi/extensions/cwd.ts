/**
 * /cd - change the working directory of the current pi session.
 *
 *   /cd <dir>         Permanent. Forks the session into <dir>: the new session file lives under
 *                     <dir>'s session directory (so /resume from <dir> finds it), its header cwd is
 *                     <dir>, and context files (AGENTS.md, .pi/) are reloaded for <dir>. The old
 *                     session file is left untouched.
 *   /cd -t <dir>      Temporary. Keeps the same session (still filed under the original project)
 *                     but points the built-in tools, `!` shell commands and the system prompt's
 *                     <cwd> at <dir> until you reset it or quit pi.
 *   /cd -t            Drop the temporary directory.
 *   /cd -             Permanent cd to the previous directory.
 *   /cd               Show the current directory.
 *
 * <dir> may be absolute, relative to the current (effective) directory, start with ~, or be a
 * zoxide query if it doesn't name an existing directory.
 */
import {
  CURRENT_SESSION_VERSION,
  createBashToolDefinition,
  createEditToolDefinition,
  createFindToolDefinition,
  createGrepToolDefinition,
  createLocalBashOperations,
  createLsToolDefinition,
  createReadToolDefinition,
  createWriteToolDefinition,
  type ExtensionAPI,
  type ExtensionCommandContext,
  type ExtensionContext,
  SessionManager,
} from "@earendil-works/pi-coding-agent";
import { execFileSync } from "node:child_process";
import { randomUUID } from "node:crypto";
import {
  closeSync,
  existsSync,
  mkdirSync,
  openSync,
  readdirSync,
  realpathSync,
  statSync,
  writeFileSync,
} from "node:fs";
import { homedir } from "node:os";
import { basename, dirname, join, resolve, sep } from "node:path";

const OLDPWD_ENV = "PI_CD_OLDPWD";
const STATUS_KEY = "cwd";

type ToolFactory = (cwd: string, settings: Record<string, any>) => any;

const TOOL_FACTORIES: Record<string, ToolFactory> = {
  read: (cwd, s) =>
    createReadToolDefinition(cwd, {
      autoResizeImages: s.images?.autoResize ?? true,
    }),
  bash: (cwd, s) =>
    createBashToolDefinition(cwd, {
      commandPrefix: s.shellCommandPrefix,
      shellPath: s.shellPath,
    }),
  edit: (cwd) => createEditToolDefinition(cwd),
  write: (cwd) => createWriteToolDefinition(cwd),
  grep: (cwd) => createGrepToolDefinition(cwd),
  find: (cwd) => createFindToolDefinition(cwd),
  ls: (cwd) => createLsToolDefinition(cwd),
};

function expandHome(p: string): string {
  if (p === "~") return homedir();
  if (p.startsWith("~/")) return join(homedir(), p.slice(2));
  return p;
}

function isDir(p: string): boolean {
  try {
    return statSync(p).isDirectory();
  } catch {
    return false;
  }
}

function zoxideQuery(query: string): string | undefined {
  try {
    const out = execFileSync("zoxide", ["query", "--", ...query.split(/\s+/)], {
      encoding: "utf-8",
      stdio: ["ignore", "pipe", "ignore"],
      timeout: 2000,
    }).trim();
    return out && isDir(out) ? out : undefined;
  } catch {
    return undefined;
  }
}

// Canonical path, matching what process.cwd() reports when pi is started in that directory, so
// sessions land in the same session directory either way.
function resolveTarget(arg: string, base: string): string | undefined {
  const direct = resolve(base, expandHome(arg));
  const found = isDir(direct) ? direct : zoxideQuery(arg);
  if (!found) return undefined;
  try {
    return realpathSync(found);
  } catch {
    return found;
  }
}

function prettyPath(p: string): string {
  const home = homedir();
  return p === home || p.startsWith(home + sep)
    ? `~${p.slice(home.length)}`
    : p;
}

function parseArgs(raw: string): { temp: boolean; rest: string } {
  const tokens = raw.trim().split(/\s+/).filter(Boolean);
  let temp = false;
  const rest: string[] = [];
  for (const t of tokens) {
    if (t === "-t" || t === "--temp") temp = true;
    else rest.push(t);
  }
  return { temp, rest: rest.join(" ") };
}

export default function (pi: ExtensionAPI) {
  let tempCwd: string | undefined;
  const overridden = new Set<string>();

  const effectiveCwd = (ctx: ExtensionContext) => tempCwd ?? ctx.cwd;

  function updateStatus(ctx: ExtensionContext) {
    if (!ctx.hasUI) return;
    ctx.ui.setStatus(
      STATUS_KEY,
      tempCwd
        ? ctx.ui.theme.fg("warning", `cwd (temp): ${prettyPath(tempCwd)}`)
        : undefined,
    );
  }

  // Wrap built-in tools so they resolve paths against tempCwd when it is set. Registered lazily
  // (first /cd -t) so sessions that never use a temp dir keep the untouched built-ins.
  function installToolOverrides() {
    const settings = pi.getSettings() as Record<string, any>;
    // Only wrap tools that are still the built-ins; leave other extensions' overrides alone.
    const builtinNames = new Set(
      pi
        .getAllTools()
        .filter((t) => t.sourceInfo?.source === "builtin")
        .map((t) => t.name),
    );
    for (const [name, factory] of Object.entries(TOOL_FACTORIES)) {
      if (overridden.has(name) || !builtinNames.has(name)) continue;
      const template = factory(process.cwd(), settings);
      pi.registerTool({
        ...template,
        defaultActive: false, // keep whatever active/inactive state the tool already had
        async execute(
          toolCallId: string,
          params: any,
          signal: any,
          onUpdate: any,
          ctx: ExtensionContext,
        ) {
          const cwd = effectiveCwd(ctx);
          const def = factory(cwd, settings);
          // Built-in tools resolve paths against ctx.cwd, not just the factory cwd.
          const cwdCtx = tempCwd
            ? new Proxy(ctx, {
                get: (target, prop) => {
                  if (prop === "cwd") return cwd;
                  const value = Reflect.get(target, prop, target);
                  return typeof value === "function"
                    ? value.bind(target)
                    : value;
                },
              })
            : ctx;
          return def.execute(toolCallId, params, signal, onUpdate, cwdCtx);
        },
      });
      overridden.add(name);
    }
  }

  pi.on("session_start", (_event, ctx) => {
    tempCwd = undefined;
    updateStatus(ctx);
  });

  pi.on("before_agent_start", (event) => {
    if (!tempCwd) return;
    const opts = event.systemPromptOptions as any;
    if (opts) opts.cwd = tempCwd;
  });

  pi.on("user_bash", () => {
    if (!tempCwd) return;
    const dir = tempCwd;
    const local = createLocalBashOperations();
    return {
      operations: {
        exec(command: string, _cwd: string, options: any) {
          return local.exec(command, dir, options);
        },
      },
    };
  });

  async function setTemp(
    ctx: ExtensionCommandContext,
    target: string | undefined,
  ) {
    if (target && target === ctx.cwd) target = undefined;
    if (target) installToolOverrides();
    tempCwd = target;
    updateStatus(ctx);
    if (target) {
      // Tell the model; the system prompt <cwd> is patched too, but a visible note makes the
      // change explicit in the transcript.
      pi.sendMessage(
        {
          customType: "cwd-change",
          content: `Working directory temporarily changed to ${target}. Relative paths and shell commands now resolve there.`,
          display: true,
        },
        { deliverAs: "nextTurn" },
      );
      ctx.ui.notify(`cwd (temp) → ${prettyPath(target)}`, "info");
    } else {
      pi.sendMessage(
        {
          customType: "cwd-change",
          content: `Working directory restored to ${ctx.cwd}.`,
          display: true,
        },
        { deliverAs: "nextTurn" },
      );
      ctx.ui.notify(`cwd restored → ${prettyPath(ctx.cwd)}`, "info");
    }
  }

  async function changePermanently(
    ctx: ExtensionCommandContext,
    target: string,
  ) {
    const from = ctx.cwd;
    if (target === from && !tempCwd) {
      ctx.ui.notify(`Already in ${prettyPath(target)}`, "info");
      return;
    }

    const sm = ctx.sessionManager;
    const sessionFile = sm.getSessionFile();
    if (!sessionFile) {
      ctx.ui.notify(
        "This session isn't persisted (--no-session); use /cd -t <dir> instead.",
        "error",
      );
      return;
    }

    await ctx.waitForIdle();

    let newPath: string;
    if (existsSync(sessionFile)) {
      newPath = SessionManager.forkFrom(sessionFile, target).getSessionFile()!;
    } else {
      // Nothing written yet (pi writes the file lazily). Create the target session by hand,
      // carrying over whatever is in memory, in the directory forkFrom would have used.
      const probe = SessionManager.create(target);
      const sessionDir = probe.getSessionDir();
      mkdirSync(sessionDir, { recursive: true });
      const id = randomUUID();
      const timestamp = new Date().toISOString();
      newPath = join(
        sessionDir,
        `${timestamp.replace(/[:.]/g, "-")}_${id}.jsonl`,
      );
      const fd = openSync(newPath, "wx");
      try {
        writeFileSync(
          fd,
          `${JSON.stringify({ type: "session", version: CURRENT_SESSION_VERSION, id, timestamp, cwd: target })}\n`,
        );
        for (const entry of sm.getEntries())
          writeFileSync(fd, `${JSON.stringify(entry)}\n`);
      } finally {
        closeSync(fd);
      }
    }

    const result = await ctx.switchSession(newPath, {
      withSession: async (nctx) => {
        try {
          process.chdir(target);
        } catch {
          // process cwd is only a courtesy for other extensions; pi itself uses the session cwd
        }
        process.env[OLDPWD_ENV] = from;
        nctx.ui.notify(`cwd → ${prettyPath(target)}`, "info");
        await nctx.sendMessage(
          {
            customType: "cwd-change",
            content: `Working directory changed from ${from} to ${target}. Relative paths and shell commands now resolve in ${target}.`,
            display: true,
          },
          { triggerTurn: false },
        );
      },
    });
    if (result.cancelled) ctx.ui.notify("cd cancelled", "warning");
  }

  pi.registerCommand("cd", {
    description:
      "Change working directory (/cd <dir> permanent, /cd -t <dir> temporary, /cd - previous)",
    getArgumentCompletions: (prefix: string) => {
      const { temp, rest } = parseArgs(prefix);
      const lead = temp ? "-t " : "";
      const typed = rest;
      const base = process.cwd();
      const expanded = expandHome(typed);
      const dirPart = typed.endsWith("/") ? expanded : dirname(expanded);
      const filePart = typed.endsWith("/") ? "" : basename(expanded);
      const absDir = resolve(base, dirPart || ".");
      try {
        const shownDir = typed.endsWith("/")
          ? typed
          : typed.includes("/")
            ? typed.slice(0, typed.lastIndexOf("/") + 1)
            : "";
        const items = readdirSync(absDir, { withFileTypes: true })
          .filter(
            (d) =>
              (d.isDirectory() ||
                (d.isSymbolicLink() && isDir(join(absDir, d.name)))) &&
              d.name.startsWith(filePart),
          )
          .filter((d) => filePart.startsWith(".") || !d.name.startsWith("."))
          .slice(0, 50)
          .map((d) => ({
            value: `${lead}${shownDir}${d.name}/`,
            label: `${d.name}/`,
          }));
        return items.length > 0 ? items : null;
      } catch {
        return null;
      }
    },
    handler: async (args, ctx) => {
      const { temp, rest } = parseArgs(args);

      if (!rest) {
        if (temp) {
          if (tempCwd) await setTemp(ctx, undefined);
          else ctx.ui.notify("No temporary directory set", "info");
          return;
        }
        const lines = [`cwd: ${prettyPath(ctx.cwd)}`];
        if (tempCwd) lines.push(`temp: ${prettyPath(tempCwd)}`);
        ctx.ui.notify(lines.join("\n"), "info");
        return;
      }

      let target: string | undefined;
      if (rest === "-") {
        target = process.env[OLDPWD_ENV];
        if (!target) {
          ctx.ui.notify("No previous directory", "warning");
          return;
        }
      } else {
        target = resolveTarget(rest, effectiveCwd(ctx));
      }
      if (!target || !isDir(target)) {
        ctx.ui.notify(`No such directory: ${rest}`, "error");
        return;
      }

      if (temp) await setTemp(ctx, target);
      else await changePermanently(ctx, target);
    },
  });
}

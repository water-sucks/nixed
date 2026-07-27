local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = "dart",
  once = true,
  callback = function()
    local flutter_tools = require("flutter-tools")
    flutter_tools.setup({
      lsp = {
        cmd = (function()
          if vim.env.FLUTTER_SDK then
            return {
              vim.env.FLUTTER_SDK .. "/bin/cache/dart-sdk/bin/dart",
              vim.env.FLUTTER_SDK .. "/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot",
              "--lsp",
            }
          else
            return { "dart", "language-server", "--protocol=lsp" }
          end
        end)(),
        on_attach = function(_, bufnr)
          local wk = require("which-key")
          wk.add({
            {
              buffer = bufnr,
              { "<LocalLeader>d", "<cmd>FlutterDevices<CR>", desc = "List connected devices" },
              { "<LocalLeader>e", "<cmd>FlutterEmulators<CR>", desc = "List connected emulators" },
              { "<LocalLeader>s", "<cmd>FlutterRun<CR>", desc = "Start app" },
              { "<LocalLeader>r", "<cmd>FlutterReload<CR>", desc = "Hot reload" },
              { "<LocalLeader>R", "<cmd>FlutterRestart<CR>", desc = "Hot restart" },
              { "<LocalLeader>q", "<cmd>FlutterQuit<CR>", desc = "Quit app" },
              { "<LocalLeader>Q", "<cmd>FlutterDetach<CR>", desc = "Detach app" },
            },
          })
        end,
        color = { enabled = false, background = false, foreground = false, virtual_text = true },
      },
      decorations = { app_version = false, device = true },
      widget_guides = { enabled = true },
      closing_tags = { highlight = "Comment", prefix = " |> ", enabled = true },
      dev_tools = { autostart = true, auto_open_browser = false },
      dev_log = { enabled = false },
      debugger = { enabled = true, exception_breakpoints = {} },
    })
  end,
})

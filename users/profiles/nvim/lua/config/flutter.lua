local lsp_format = require("lsp-format")

require("flutter-tools").setup({
  lsp = {
    cmd = (function()
      if vim.env.FLUTTER_SDK then
        return {
          vim.env.FLUTTER_SDK .. "/bin/cache/dart-sdk/bin/dart",
          vim.env.FLUTTER_SDK .. "/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot",
          "--lsp",
        }
      else
        return nil
      end
    end)(),
    on_attach = function(client)
      client.resolved_capabilities.document_formatting = false
      lsp_format.on_attach(client)
    end,
    color = {
      enabled = false,
      background = false,
      foreground = false,
      virtual_text = true,
    },
  },
  decorations = {
    app_version = false,
    device = true,
  },
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    highlight = "ErrorMsg",
    prefix = ">|",
    enabled = true,
  },
  dev_tools = {
    autostart = true,
    auto_open_browser = true,
  },
  debugger = {
    enabled = true,
    run_via_dap = true,
    register_configurations = function(_)
      require("dap").configurations.dart = {}
      require("dap.ext.vscode").load_launchjs()
    end,
  },
})

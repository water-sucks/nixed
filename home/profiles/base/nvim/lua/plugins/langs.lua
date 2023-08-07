local on_attach = require("plugins.lsp.on_attach")
local flutter_tools_spec = use("akinsho/flutter-tools.nvim", {
  dependencies = { use("nvim-lua/plenary.nvim") },
  ft = "dart",
})
flutter_tools_spec.config = function()
  require("flutter-tools").setup({
    lsp = {
      cmd = (function()
        if vim.env.FLUTTER_SDK then
          -- FLUTTER_SDK is intended for when the Flutter SDK is
          -- installed with Nix, but can still be specified even
          -- when installed normally.
          return {
            vim.env.FLUTTER_SDK .. "/bin/cache/dart-sdk/bin/dart",
            vim.env.FLUTTER_SDK .. "/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot",
            "--lsp",
          }
        else
          -- Dart has to be on the PATH if FLUTTER_SDK is not defined,
          -- it makes no sense to write Dart without Dart installed
          -- properly.
          return { "dart", "language-server", "--protocol=lsp" }
        end
      end)(),
      on_attach = require("plugins.lsp.on_attach"),
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
      highlight = "Comment",
      prefix = " |> ",
      enabled = true,
    },
    dev_tools = {
      autostart = true,
      auto_open_browser = false,
    },
    dev_log = {
      enabled = false,
    },
    debugger = {
      enabled = true,
      run_via_dap = true,
      register_configurations = function(_)
        local dap = require("dap")
        dap.adapters.dart = {
          type = "executable",
          command = vim.env.FLUTTER_SDK and "flutter" or "dart",
          args = { "debug_adapter" },
        }
        dap.configurations.dart = {}
        require("dap.ext.vscode").load_launchjs()
      end,
    },
  })
end

local haskell_tools_spec = use("MrcJkb/haskell-tools.nvim", {
  dependencies = {
    use("neovim/nvim-lspconfig"),
    use("nvim-lua/plenary.nvim"),
    use("nvim-telescope/telescope.nvim"),
  },
  config = function()
    require("haskell-tools").setup({
      hls = {
        on_attach = require("plugins.lsp.on_attach"),
        settings = {
          haskell = {
            formattingProvider = "fourmolu",
            checkProject = true,
          },
        },
      },
    })
  end,
  ft = "haskell",
})

local jdtls_spec = use("mfussenegger/nvim-jdtls", {
  ft = "java",
})

local java_version_names = {
  ["8"] = "JavaSE-1.8",
  ["9"] = "JavaSE-9",
  ["10"] = "JavaSE-10",
  ["11"] = "JavaSE-11",
  ["12"] = "JavaSE-12",
  ["13"] = "JavaSE-13",
  ["14"] = "JavaSE-14",
  ["15"] = "JavaSE-15",
  ["16"] = "JavaSE-16",
  ["17"] = "JavaSE-17",
  ["18"] = "JavaSE-18",
  ["19"] = "JavaSE-19",
}

jdtls_spec.config = function()
  -- This only supports JAVA_HOME. How do I support detecting more
  -- JDKs on demand?

  local java_home = vim.env.JAVA_HOME
  local runtime = nil
  local idx = string.find(java_home or "", "openjdk-")
  if idx == nil then
    print("error: unable to determine JDK version from JAVA_HOME")
  else
    local version = string.match(string.sub(java_home, idx), "%d+")
    runtime = {
      name = java_version_names[version],
      path = java_home .. "/lib/openjdk",
    }
  end

  local root_dir = require("jdtls.setup").find_root({ "pom.xml", "build.gradle", "settings.gradle", ".git" })
  local workspace_folder = vim.env.HOME .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

  require("jdtls").start_or_attach({
    cmd = {
      "jdt-language-server",
      "-noverify",
      "-data",
      workspace_folder,
    },
    root_dir = root_dir,
    on_attach = function(client, bufnr)
      -- TODO: add extra bindings here
      on_attach(client, bufnr)
    end,
    settings = {
      ["java.format.settings.url"] = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
      ["java.format.settings.profile"] = "GoogleStyle",
      java = {
        configuration = {
          runtimes = runtime and {
            runtime,
          } or nil,
        },
      },
    },
    handlers = {
      -- Only show progress reports from LSP
      ["language/status"] = function() end,
    },
  })
end

local ltex_extra_spec = use("barreiroleo/ltex_extra.nvim", {
  module = "ltex_extra",
  ft = "tex",
})

local neodev_spec = use("folke/neodev.nvim", {
  module = "neodev",
  ft = "lua",
})

local rust_tools_spec = use("simrat39/rust-tools.nvim", {
  -- dependencies = { use("neovim/nvim-lspconfig") },
  ft = "rust",
})

rust_tools_spec.config = function()
  local extension_path = vim.fn.stdpath("data") .. "/vscode-lldb/"
  local codelldb_path = extension_path .. "adapter/codelldb"
  local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

  require("rust-tools").setup({
    server = {
      on_attach = require("plugins.lsp.on_attach"),
    },
    dap = {
      adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
    },
  })

  -- Workaround for when rust-tools is initially loaded so that ft = "rust" can work in the spec
  vim.cmd("e!")
end

local typst_spec = use("kaarmu/typst.vim", {
  ft = "typst",
  lazy = false,
})

local vimtex_spec = use("lervag/vimtex", {
  dependencies = { use("neovim/nvim-lspconfig") },
  config = function() end,
  ft = "tex",
})
vimtex_spec.config = function()
  local wk = require("which-key")

  vim.g.vimtex_view_method = "sioyek"
  vim.g.vimtex_compiler_method = "latexrun"

  -- Neovim compilation callback support with remote
  vim.g.vimtex_compiler_progname = "nvr"
  vim.g.vimtex_view_reverse_search_edit_cmd = "nvr --remote-silent %f -c %l"

  -- Using Treesitter requires these settings
  vim.g.vimtex_syntax_enabled = 0
  vim.g.vimtex_syntax_conceal_disable = 1

  vim.g.vimtex_compiler_silent = 1
  vim.g.vimtex_complete_bib = {
    simple = 1,
    menu_fmt = "@year, @author_short, @title",
  }
  vim.g.vimtex_echo_verbose_input = 0

  wk.register({
    l = {
      name = "VimTeX",
      a = "Context menu",
      i = "Info",
      I = "Full info",
      t = "Open ToC",
      T = "Toggle ToC",
      y = "Open labels",
      Y = "Toggle labels",
      v = "View",
      r = "Reverse search",
      l = "Compile",
      L = "Compile selected",
      k = "Stop",
      K = "Stop all",
      e = "Errors",
      o = "Compiler output",
      g = "Status",
      G = "Full status",
      c = "Clean",
      C = "Full clean",
      m = "List imaps",
      x = "Reload",
      X = "Reload state",
      s = "Toggle main",
      q = "Logs",
    },
  }, {
    prefix = "<LocalLeader>",
  })

  wk.register({
    ds = {
      c = "Command",
      d = "Delimiter",
      e = "Environment",
      ["$"] = "Math environment",
    },

    cs = {
      c = "Command",
      d = "Delimiter",
      e = "Environment",
      ["$"] = "Math environment",
    },

    ts = {
      name = "Toggle",
      c = "Star",
      d = "Modifier",
      D = "Modifier (reversed)",
      e = "Star (environment)",
      f = "Fraction",
      ["$"] = "Math",
    },
  }, {})

  wk.register({
    i = {
      c = "Command",
      d = "Delimiter",
      e = "Environment",
      m = "Item",
      P = "Section",
      ["$"] = "Math environment",
    },

    a = {
      c = "Command",
      d = "Delimiter",
      e = "Environment",
      m = "Item",
      P = "Section",
      ["$"] = "Math environment",
    },
  }, {
    mode = "o",
  })

  wk.register({
    ["]"] = {
      ["["] = "Next section start",
      ["]"] = "Next section end",
      ["/"] = "Next comment start",
      ["*"] = "Next comment end",
      m = "Next section start",
      M = "Next section end",
      n = "Next math env start",
      N = "Next math env end",
      r = "Next frame env start",
      R = "Next frame env end",
    },

    ["["] = {
      ["["] = "Previous section start",
      ["]"] = "Previous section end",
      ["/"] = "Previous comment start",
      ["*"] = "Previous comment end",
      m = "Previous section start",
      M = "Previous section end",
      n = "Previous math env start",
      N = "Previous math env end",
      r = "Previous frame env start",
      R = "Previous frame env end",
    },
  }, {
    mode = { "n", "x", "o" },
  })
end

return {
  flutter_tools_spec,
  haskell_tools_spec,
  jdtls_spec,
  ltex_extra_spec,
  neodev_spec,
  rust_tools_spec,
  typst_spec,
  vimtex_spec,
}

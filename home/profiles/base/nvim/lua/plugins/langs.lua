local on_attach = require("plugins.lsp.on_attach")
local flutter_tools_spec = use("akinsho/flutter-tools.nvim", {
  dependencies = { use("nvim-lua/plenary.nvim"), use("mfussenegger/nvim-dap") },
  ft = "dart",
})
flutter_tools_spec.config = function()
  local wk = require("which-key")

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
      on_attach = function(client, bufnr)
        on_attach(client, bufnr)

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
      exception_breakpoints = {},
    },
  })
end

local jdtls_spec = use("mfussenegger/nvim-jdtls", {
  ft = "java",
  dependencies = {
    use("neovim/nvim-lspconfig"),
    use("nvim-lua/plenary.nvim"),
    use("mfussenegger/nvim-dap"),
  },
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
  local wk = require("which-key")
  local jdtls = require("jdtls")

  -- This only supports JAVA_HOME. How do I support detecting more
  -- JDKs on demand?
  local java_home = vim.env.JAVA_HOME
  local runtime = nil
  local idx = string.find(java_home or "", "jdk-")
  if idx == nil then
    print("error: unable to determine JDK version from JAVA_HOME")
  else
    local version = string.match(string.sub(java_home, idx), "%d+")
    runtime = {
      name = java_version_names[version],
      path = java_home,
    }
  end

  local root_dir = require("jdtls.setup").find_root({ "pom.xml", "build.gradle", "settings.gradle", ".git" })
  local workspace_folder = vim.env.HOME .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

  local bundles = {
    vim.fn.stdpath("data") .. "/java-debug/com.microsoft.java.debug.plugin.jar",
  }

  vim.list_extend(
    bundles,
    vim.split(
      vim.fn.glob(
        vim.fn.stdpath("data") .. "/vscode-java-test/share/vscode/extensions/vscjava.vscode-java-test/server/*.jar",
        true
      ),
      "\n"
    )
  )

  local start = function()
    jdtls.start_or_attach({
      cmd = {
        "jdtls",
        "-noverify",
        "-data",
        workspace_folder,
      },
      init_options = {
        bundles = bundles,
      },
      root_dir = root_dir,
      on_attach = function(client, bufnr)
        on_attach(client, bufnr)

        wk.add({
          {
            buffer = bufnr,
            { "<LocalLeader>o", jdtls.organize_imports, desc = "Organize imports" },

            { "<LocalLeader>d", group = "Debug" },
            { "<LocalLeader>dc", jdtls.compile, desc = "Compile" },
            { "<LocalLeader>df", jdtls.test_class, desc = "Test class" },
            { "<LocalLeader>dn", jdtls.test_nearest_method, desc = "Test nearest method" },
            {
              "<LocalLeader>ds",
              function()
                vim.cmd("JdtJshell")
              end,
              desc = "Start JShell",
            },
            {
              "<LocalLeader>du",

              function()
                vim.cmd("JdtUpdateDebugConfig")
              end,
              desc = "Update debug config",
            },

            { "<LocalLeader>d", group = "Extract" },
            { "<LocalLeader>xc", jdtls.extract_constant, desc = "Extract constant" },
            { "<LocalLeader>xm", jdtls.extract_method, desc = "Extract method" },
            { "<LocalLeader>xv", jdtls.extract_variable, desc = "Extract variable" },
          },
        })
      end,
      settings = {
        ["java.format.settings.url"] = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
        ["java.format.settings.profile"] = "GoogleStyle",
        java = {
          configuration = {
            completion = {
              filteredTypes = {
                "com.sun.*",
                "java.awt.*",
                "jdk.*",
                "sun.*",
              },
            },
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

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "java",
    callback = function()
      start()
    end,
  })

  start()
end

local ltex_extra_spec = use("barreiroleo/ltex_extra.nvim", {
  module = "ltex_extra",
  ft = "tex",
})

local lazydev_spec = use("folke/lazydev.nvim", {
  ft = "lua",
  config = function()
    require("lazydev").setup({})
  end,
})

local rust_tools_spec = use("simrat39/rust-tools.nvim", {
  -- dependencies = { use("neovim/nvim-lspconfig") },
  ft = "rust",
})

local roslyn_spec = use("seblj/roslyn.nvim", {
  ft = "cs",
  opts = {
    exe = "Microsoft.CodeAnalysis.LanguageServer",
  },
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

  wk.add({
    { "<LocalLeader>l", group = "VimTeX" },
    { "<LocalLeader>la", desc = "Context menu" },
    { "<LocalLeader>li", desc = "Info" },
    { "<LocalLeader>lI", desc = "Full info" },
    { "<LocalLeader>lt", desc = "Open ToC" },
    { "<LocalLeader>lT", desc = "Toggle ToC" },
    { "<LocalLeader>ly", desc = "Open labels" },
    { "<LocalLeader>lY", desc = "Toggle labels" },
    { "<LocalLeader>lv", desc = "View" },
    { "<LocalLeader>lr", desc = "Reverse search" },
    { "<LocalLeader>ll", desc = "Compile" },
    { "<LocalLeader>lL", desc = "Compile selected" },
    { "<LocalLeader>lk", desc = "Stop" },
    { "<LocalLeader>lK", desc = "Stop all" },
    { "<LocalLeader>le", desc = "Errors" },
    { "<LocalLeader>lo", desc = "Compiler output" },
    { "<LocalLeader>lg", desc = "Status" },
    { "<LocalLeader>lG", desc = "Full status" },
    { "<LocalLeader>lc", desc = "Clean" },
    { "<LocalLeader>lC", desc = "Full clean" },
    { "<LocalLeader>lm", desc = "List imaps" },
    { "<LocalLeader>lx", desc = "Reload" },
    { "<LocalLeader>lX", desc = "Reload state" },
    { "<LocalLeader>ls", desc = "Toggle main" },
    { "<LocalLeader>lq", desc = "Logs" },
  })

  wk.add({
    { "dsc", desc = "Command" },
    { "dsd", desc = "Delimiter" },
    { "dse", desc = "Environment" },
    { "ds$", desc = "Math environment" },

    { "csc", desc = "Command" },
    { "csd", desc = "Delimiter" },
    { "cse", desc = "Environment" },
    { "cs$", desc = "Math environment" },

    { "ts", name = "Toggle" },
    { "tsc", desc = "Star" },
    { "tsd", desc = "Modifier" },
    { "tsD", desc = "Modifier (reversed)" },
    { "tse", desc = "Star (environment)" },
    { "tsf", desc = "Fraction" },
    { "ts$", desc = "Math" },
  })

  wk.add({
    {
      mode = "o",
      { "ic", desc = "Command" },
      { "id", desc = "Delimiter" },
      { "ie", desc = "Environment" },
      { "im", desc = "Item" },
      { "iP", desc = "Section" },
      { "i$", desc = "Math environment" },

      { "ac", desc = "Command" },
      { "ad", desc = "Delimiter" },
      { "ae", desc = "Environment" },
      { "am", desc = "Item" },
      { "aP", desc = "Section" },
      { ["a$"] = "Math environment" },
    },
  })

  wk.add({
    {
      mode = { "n", "x", "o" },
      { "][", desc = "Next section start" },
      { "]]", desc = "Next section end" },
      { "]/", desc = "Next comment start" },
      { "]*", desc = "Next comment end" },
      { "]m", desc = "Next section start" },
      { "]M", desc = "Next section end" },
      { "]n", desc = "Next math env start" },
      { "]N", desc = "Next math env end" },
      { "]r", desc = "Next frame env start" },
      { "]R", desc = "Next frame env end" },

      { "[[", desc = "Previous section start" },
      { "[]", desc = "Previous section end" },
      { "[/", desc = "Previous comment start" },
      { "[*", desc = "Previous comment end" },
      { "[m", desc = "Previous section start" },
      { "[M", desc = "Previous section end" },
      { "[n", desc = "Previous math env start" },
      { "[N", desc = "Previous math env end" },
      { "[r", desc = "Previous frame env start" },
      { "[R", desc = "Previous frame env end" },
    },
  })
end

local render_markdown_spec = use("MeanderingProgrammer/render-markdown.nvim", {
  dependencies = { use("nvim-treesitter/nvim-treesitter") },
  event = "VeryLazy",
  ft = "markdown",
})
render_markdown_spec.config = function()
  require("render-markdown").setup({
    enabled = true,
    heading = {
      -- The heading concealer does not work with highlights.
      enabled = false,
    },
    bullet = {
      icons = { "", "", "", "", "", "" },
    },
    code = {
      -- For some reason, the language name is duplicated.
      -- Disable this behavior for now.
      language_name = false,
    },
    checkbox = {
      enabled = true,
      position = "inline",

      unchecked = { icon = "[ ]", highlight = "RenderMarkdownUnchecked" },
      checked = { icon = "[]", highlight = "RenderMarkdownChecked" },

      custom = {
        todo = { raw = "[-]", rendered = "[󰇘]", highlight = "RenderMarkdownTodo" },
        uncertain = {
          raw = "[?]",
          rendered = "[]",
          highlight = "RenderMarkdownUncertain",
          scope_highlight = "@markup.italic",
        },
        important = {
          raw = "[!]",
          rendered = "[]",
          highlight = "RenderMarkdownImportant",
          scope_highlight = "@markup.strong",
        },
        paused = {
          raw = "[=]",
          rendered = "[]",
          highlight = "RenderMarkdownPaused",
          scope_highlight = "@markup.italic",
        },
        canceled = {
          raw = "[_]",
          rendered = "[󰜺]",
          highlight = "RenderMarkdownCanceled",
          scope_highlight = "@markup.strikethrough",
        },
      },
    },
    sign = { enabled = false },
  })
end

return {
  flutter_tools_spec,
  jdtls_spec,
  ltex_extra_spec,
  lazydev_spec,
  render_markdown_spec,
  roslyn_spec,
  rust_tools_spec,
  typst_spec,
  vimtex_spec,
}

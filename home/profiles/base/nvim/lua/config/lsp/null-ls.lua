local null_ls = require("null-ls")
local lsp_format = require("lsp-format")

null_ls.setup({
  on_attach = function(client)
    lsp_format.on_attach(client)
  end,
  sources = {
    null_ls.builtins.formatting.asmfmt,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.dart_format.with({
      command = (function()
        if vim.env.FLUTTER_SDK then
          return vim.env.FLUTTER_SDK .. "/bin/cache/dart-sdk/bin/dart"
        else
          return "dart"
        end
      end)(),
      args = function(params)
        return {
          "format",
          "-l",
          vim.b[params.bufnr]["editorconfig"].line_size or 80,
        }
      end,
    }),
    null_ls.builtins.formatting.fourmolu,
    null_ls.builtins.formatting.gofumpt,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.mix,
    -- I prefer using alejandra for my own code, but also
    -- use nixpkgs-fmt in some codebases and in nixpkgs,
    -- so I switch it based on an environment variable.
    (function()
      if vim.env.USE_NIXPKGS_FMT == "1" then
        return null_ls.builtins.formatting.nixpkgs_fmt
      else
        return null_ls.builtins.formatting.alejandra
      end
    end)(),
    null_ls.builtins.formatting.rustfmt,
    null_ls.builtins.formatting.shellharden,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.stylua,

    null_ls.builtins.diagnostics.alex,
    null_ls.builtins.diagnostics.cppcheck,
    null_ls.builtins.diagnostics.credo,
    null_ls.builtins.diagnostics.deadnix,
    null_ls.builtins.diagnostics.editorconfig_checker.with({ command = "editorconfig-checker" }),
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.gitlint,
    null_ls.builtins.diagnostics.markdownlint,
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.statix,
    null_ls.builtins.diagnostics.vint,

    null_ls.builtins.code_actions.shellcheck,
    null_ls.builtins.code_actions.statix,
  },
})

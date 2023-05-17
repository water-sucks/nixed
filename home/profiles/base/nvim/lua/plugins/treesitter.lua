local treesitter_spec = use("nvim-treesitter/nvim-treesitter", {
  dependencies = {
    use("nvim-treesitter/nvim-treesitter-textobjects", {}),
    use("nvim-treesitter/nvim-treesitter-refactor", {}),
    use("windwp/nvim-ts-autotag", {}),
    use("JoosepAlviste/nvim-ts-context-commentstring", {}),
    use("nvim-treesitter/playground", {}),
  },
  event = "VeryLazy",
})

treesitter_spec.config = function()
  local wk = require("which-key")

  require("nvim-treesitter.configs").setup({
    -- This directory doesn't actually have any parsers in it;
    -- it's just to prevent the plugin from getting fussy because
    -- it can't write into the Nix store.
    parser_install_dir = vim.fn.stdpath("config") .. "/parsers",

    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },

    playground = {
      enable = true,
    },

    textobjects = {
      select = {
        enable = true,
        disable = { "latex" },
        lookahead = true,
        keymaps = {
          ib = { query = "@block.inner", desc = "Inner block region" },
          ab = { query = "@block.outer", desc = "Outer block region" },

          ic = { query = "@class.inner", desc = "Inner class region" },
          ac = { query = "@class.outer", desc = "Outer class region" },

          ["if"] = { query = "@function.inner", desc = "Inner function region" },
          af = { query = "@function.outer", desc = "Outer function region" },

          ii = { query = "@conditional.inner", desc = "Inner conditional region" },
          ai = { query = "@conditional.outer", desc = "Outer conditional region" },

          il = { query = "@loop.inner", desc = "Inner loop region" },
          al = { query = "@loop.outer", desc = "Outer loop region" },

          ip = { query = "@parameter.inner", desc = "Inner parameter region" },
          ap = { query = "@parameter.outer", desc = "Outer parameter region" },

          az = { query = "@call.inner", desc = "Outer call region" },
          iz = { query = "@call.inner", desc = "Inner call region" },

          c = { query = "@comment.outer", desc = "Comment" },
          L = { query = "@statement.outer", desc = "Statement" },
        },
      },

      swap = {
        enable = true,
        disable = { "latex" },
        swap_next = {
          ["<Leader>sb"] = { query = "@block.outer", desc = "Next block" },
          ["<Leader>sc"] = { query = "@class.outer", desc = "Next class" },
          ["<Leader>sf"] = { query = "@function.outer", desc = "Next function" },
          ["<Leader>si"] = { query = "@conditional.outer", desc = "Next conditional" },
          ["<Leader>sp"] = { query = "@parameter.inner", desc = "Next parameter" },
          ["<Leader>ss"] = { query = "@statement.outer", desc = "Next statement" },
        },
        swap_previous = {
          ["<Leader>sB"] = { query = "@block.outer", desc = "Previous block" },
          ["<Leader>sC"] = { query = "@class.outer", desc = "Previous class" },
          ["<Leader>sF"] = { query = "@function.outer", desc = "Previous function" },
          ["<Leader>sI"] = { query = "@conditional.outer", desc = "Previous conditional" },
          ["<Leader>sP"] = { query = "@parameter.inner", desc = "Previous parameter" },
          ["<Leader>sS"] = { query = "@statement.outer", desc = "Previous statement" },
        },
      },

      move = {
        enable = true,
        disable = { "latex" },
        set_jumps = true,
        goto_next_start = {
          ["]m"] = { query = "@function.outer", desc = "Next function start" },
          ["]]"] = { query = "@class.outer", desc = "Next class start" },
        },
        goto_next_end = {
          ["]M"] = { query = "@function.outer", desc = "Next function end" },
          ["]["] = { query = "@class.outer", desc = "Next class end" },
        },
        goto_previous_start = {
          ["[m"] = { query = "@function.outer", desc = "Previous function start" },
          ["[["] = { query = "@class.outer", desc = "Previous class start" },
        },
        goto_previous_end = {
          ["[M"] = { query = "@function.outer", desc = "Previous function end" },
          ["[]"] = { query = "@class.outer", desc = "Previous class end" },
        },
      },
    },

    refactor = {
      highlight_definitions = {
        enable = true,
        clear_on_cursor_move = false,
      },
      highlight_current_scope = {
        enable = false,
      },
      navigation = {
        enable = true,
        keymaps = {
          goto_definition_lsp_fallback = "gd",
          goto_definition = "<nop>",
          list_definitions = "glD",
          list_definitions_toc = "glO",
          goto_next_usage = "gn",
          goto_previous_usage = "gp",
        },
      },
    },

    autotag = {
      enable = true,
    },
  })

  wk.register({
    s = {
      name = "Swap",
    },
  }, {
    prefix = "<Leader>",
  })

  wk.register({
    g = {
      d = "Go to definition",
      n = "Jump to next usage",
      p = "Jump to previous usage",
      l = {
        name = "List",
        D = "List definitions",
        O = "List definitions TOC",
      },
    },
  }, {})

  -- Use HTML parser for XML files
  vim.treesitter.language.register("html", "xml")

  -- Only enable Treesitter highlighting for TeX files explicitly
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    callback = function()
      vim.cmd(":TSBufDisable highlight")
    end,
  })
end

return {
  treesitter_spec,
}

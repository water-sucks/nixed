local wk = require("which-key")

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

require("nvim-treesitter.configs").setup({
  -- This directory doesn't actually have any parsers in it;
  -- it's just to prevent the plugin from getting fussy because
  -- it can't write into the Nix store.
  parser_install_dir = vim.fn.stdpath("config") .. "/parsers",

  highlight = {
    enable = true,
  },

  playground = {
    enable = true,
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["ib"] = { query = "@block.inner", desc = "Inner block region" },
        ["ab"] = { query = "@block.outer", desc = "Outer block region" },

        ["ic"] = { query = "@class.inner", desc = "Inner class region" },
        ["ac"] = { query = "@class.outer", desc = "Outer class region" },

        ["if"] = { query = "@function.inner", desc = "Inner function region" },
        ["af"] = { query = "@function.outer", desc = "Outer function region" },

        ["ii"] = { query = "@conditional.inner", desc = "Inner conditional region" },
        ["ai"] = { query = "@conditional.outer", desc = "Outer conditional region" },

        ["il"] = { query = "@loop.inner", desc = "Inner loop region" },
        ["al"] = { query = "@loop.outer", desc = "Outer loop region" },

        ["ip"] = { query = "@parameter.inner", desc = "Inner parameter region" },
        ["ap"] = { query = "@parameter.outer", desc = "Outer parameter region" },

        ["iz"] = { query = "@call.inner", desc = "Inner call region" },
        ["az"] = { query = "@call.inner", desc = "Outer call region" },

        c = { query = "@comment.outer", desc = "Comment" },
        s = { query = "@statement.outer", desc = "Statement" },
      },
    },

    swap = {
      enable = true,
      swap_next = {
        ["<Leader>sc"] = { query = "@class.outer", desc = "Next class" },
        ["<Leader>sf"] = { query = "@function.outer", desc = "Next function" },
        ["<Leader>si"] = { query = "@conditional.outer", desc = "Next conditional" },
        ["<Leader>sp"] = { query = "@parameter.inner", desc = "Next parameter" },
      },
      swap_previous = {
        ["<Leader>sC"] = { query = "@class.outer", desc = "Previous class" },
        ["<Leader>sF"] = { query = "@function.outer", desc = "Previous function" },
        ["<Leader>sI"] = { query = "@conditional.outer", desc = "Previous conditional" },
        ["<Leader>sP"] = { query = "@parameter.inner", desc = "Previous parameter" },
      },
    },

    move = {
      enable = true,
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
})

wk.register({
  s = {
    name = "Swap",
  },
}, {
  mode = "n",
  prefix = "<Leader>",
})

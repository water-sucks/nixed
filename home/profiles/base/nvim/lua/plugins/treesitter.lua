local treesitter_spec = use("nvim-treesitter/nvim-treesitter", {
  config = function()
    -- Use HTML parser for XML files
    vim.treesitter.language.register("html", "xml")

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function(args)
        local filetype = args.match
        local bufnr = args.buf

        if vim.treesitter.language.add(filetype) then
          vim.treesitter.start(bufnr, filetype)
        end
      end,
    })
  end,
})

local tsobj_spec = use("nvim-treesitter/nvim-treesitter-textobjects", {
  config = function()
    require("nvim-treesitter-textobjects").setup({
      select = {
        lookahead = true,
      },
      move = {
        set_jumps = true,
      },
    })

    local wk = require("which-key")

    local select_textobj = require("nvim-treesitter-textobjects.select").select_textobject
    local swap_next = require("nvim-treesitter-textobjects.swap").swap_next
    local swap_prev = require("nvim-treesitter-textobjects.swap").swap_previous
    local goto_next_start = require("nvim-treesitter-textobjects.move").goto_next_start
    local goto_next_end = require("nvim-treesitter-textobjects.move").goto_next_end
    local goto_prev_start = require("nvim-treesitter-textobjects.move").goto_previous_start
    local goto_prev_end = require("nvim-treesitter-textobjects.move").goto_previous_end

    wk.add({
      -- Selection keybinds
      {
        "ib",
        function()
          select_textobj("@block.inner", "textobjects")
        end,
        desc = "Inner block region",
        mode = { "x", "o" },
      },
      {
        "ab",
        function()
          select_textobj("@block.outer", "textobjects")
        end,
        desc = "Outer block region",
        mode = { "x", "o" },
      },

      {
        "ic",
        function()
          select_textobj("@class.inner", "textobjects")
        end,
        desc = "Inner class region",
        mode = { "x", "o" },
      },
      {
        "ac",
        function()
          select_textobj("@class.outer", "textobjects")
        end,
        desc = "Outer class region",
        mode = { "x", "o" },
      },

      {
        "if",
        function()
          select_textobj("@function.inner", "textobjects")
        end,
        desc = "Inner function region",
        mode = { "x", "o" },
      },
      {
        "af",
        function()
          select_textobj("@function.outer", "textobjects")
        end,
        desc = "Outer function region",
        mode = { "x", "o" },
      },

      {
        "ii",
        function()
          select_textobj("@conditional.inner", "textobjects")
        end,
        desc = "Inner conditional region",
        mode = { "x", "o" },
      },
      {
        "ai",
        function()
          select_textobj("@conditional.outer", "textobjects")
        end,
        desc = "Outer conditional region",
        mode = { "x", "o" },
      },

      {
        "il",
        function()
          select_textobj("@loop.inner", "textobjects")
        end,
        desc = "Inner loop region",
        mode = { "x", "o" },
      },
      {
        "al",
        function()
          select_textobj("@loop.outer", "textobjects")
        end,
        desc = "Outer loop region",
        mode = { "x", "o" },
      },

      {
        "ip",
        function()
          select_textobj("@parameter.inner", "textobjects")
        end,
        desc = "Inner parameter region",
        mode = { "x", "o" },
      },
      {
        "ap",
        function()
          select_textobj("@parameter.outer", "textobjects")
        end,
        desc = "Outer parameter region",
        mode = { "x", "o" },
      },

      {
        "az",
        function()
          select_textobj("@call.inner", "textobjects")
        end,
        desc = "Outer call region",
        mode = { "x", "o" },
      },
      {
        "iz",
        function()
          select_textobj("@call.inner", "textobjects")
        end,
        desc = "Inner call region",
        mode = { "x", "o" },
      },

      {
        "c",
        function()
          select_textobj("@comment.outer", "textobjects")
        end,
        desc = "Comment",
        mode = { "x", "o" },
      },
      {
        "L",
        function()
          select_textobj("@statement.outer", "textobjects")
        end,
        desc = "Statement",
        mode = { "x", "o" },
      },

      -- Swap keybinds
      { "<Leader>s", group = "Swap" },

      {
        "<Leader>sb",
        function()
          swap_next("@block.outer")
        end,
        desc = "Next block",
      },
      {
        "<Leader>sc",
        function()
          swap_next("@class.outer")
        end,
        desc = "Next class",
      },
      {
        "<Leader>sf",
        function()
          swap_next("@function.outer")
        end,
        desc = "Next function",
      },
      {
        "<Leader>si",
        function()
          swap_next("@conditional.outer")
        end,
        desc = "Next conditional",
      },
      {
        "<Leader>sp",
        function()
          swap_next("@parameter.inner")
        end,
        desc = "Next parameter",
      },
      {
        "<Leader>ss",
        function()
          swap_next("@statement.outer")
        end,
        desc = "Next statement",
      },

      {
        "<Leader>sB",
        function()
          swap_prev("@block.outer")
        end,
        desc = "Previous block",
      },
      {
        "<Leader>sC",
        function()
          swap_prev("@class.outer")
        end,
        desc = "Previous class",
      },
      {
        "<Leader>sF",
        function()
          swap_prev("@function.outer")
        end,
        desc = "Previous function",
      },
      {
        "<Leader>sI",
        function()
          swap_prev("@conditional.outer")
        end,
        desc = "Previous conditional",
      },
      {
        "<Leader>sP",
        function()
          swap_prev("@parameter.inner")
        end,
        desc = "Previous parameter",
      },
      {
        "<Leader>sS",
        function()
          swap_prev("@statement.outer")
        end,
        desc = "Previous statement",
      },

      -- Move keybinds
      {
        "]m",
        function()
          goto_next_start("@function.outer", "textobjects")
        end,
        desc = "Next function start",
        mode = { "n", "x", "o" },
      },
      {
        "]]",
        function()
          goto_next_start("@class.outer", "textobjects")
        end,
        desc = "Next class start",
        mode = { "n", "x", "o" },
      },

      {
        "]M",
        function()
          goto_next_end("@function.outer", "textobjects")
        end,
        desc = "Next function end",
        mode = { "n", "x", "o" },
      },
      {
        "][",
        function()
          goto_next_end("@class.outer", "textobjects")
        end,
        desc = "Next class end",
        mode = { "n", "x", "o" },
      },

      {
        "[m",
        function()
          goto_prev_start("@function.outer", "textobjects")
        end,
        desc = "Previous function start",
        mode = { "n", "x", "o" },
      },
      {
        "[[",
        function()
          goto_prev_start("@class.outer", "textobjects")
        end,
        desc = "Previous class start",
        mode = { "n", "x", "o" },
      },

      {
        "[M",
        function()
          goto_prev_end("@function.outer", "textobjects")
        end,
        desc = "Previous function end",
        mode = { "n", "x", "o" },
      },
      {
        "[]",
        function()
          goto_prev_end("@class.outer", "textobjects")
        end,
        desc = "Previous class end",
        mode = { "n", "x", "o" },
      },
    })
  end,
})

local autotag_spec = use("windwp/nvim-ts-autotag", {
  config = function()
    require("nvim-ts-autotag").setup({})
  end,
})

return {
  treesitter_spec,
  tsobj_spec,
  autotag_spec,
}

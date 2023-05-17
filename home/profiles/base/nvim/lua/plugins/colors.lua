local colorscheme_spec = use("water-sucks/darkrose.nvim", {
  dev = true,
  lazy = false,
  config = function()
    vim.cmd.colorscheme("darkrose")
  end,
})

local colorizer_spec = use("NvChad/nvim-colorizer.lua", {
  event = "VeryLazy",
  config = function()
    require("colorizer").setup({
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = false,
        RRGGBBAA = true,
        AARRGGBB = true,
        rgb_fn = true,
        hsl_fn = true,
        mode = "background",
        tailwind = true,
      },
    })
  end,
})

local highlight_current_n_spec = use("rktjmp/highlight-current-n.nvim", {
  event = "VeryLazy",
  config = function()
    local map = vim.keymap.set
    local augroup = vim.api.nvim_create_augroup
    local au = vim.api.nvim_create_autocmd

    map("n", "n", "<Plug>(highlight-current-n-n)", { silent = true, noremap = false })
    map("n", "N", "<Plug>(highlight-current-n-N)", { silent = true, noremap = false })

    map("n", "*", "*N", { silent = true, noremap = true })

    augroup("ClearSearchHL", { clear = true })
    au("CmdlineEnter", {
      group = "ClearSearchHL",
      pattern = "/,\\?",
      callback = function()
        vim.o.hlsearch = true
      end,
    })
    au("CmdlineLeave", {
      group = "ClearSearchHL",
      pattern = "/,\\?",
      callback = function()
        vim.o.hlsearch = false
        require("highlight_current_n")["/,?"]()
      end,
    })
  end,
})

local lush_spec = use("rktjmp/lush.nvim", {
  event = "VeryLazy",
})

return {
  colorscheme_spec,
  colorizer_spec,
  highlight_current_n_spec,
  lush_spec,
}

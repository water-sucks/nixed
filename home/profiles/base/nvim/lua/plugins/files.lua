local use = require("utils").use

local carbon_spec = use("SidOfc/carbon.nvim", {
  event = "CursorHold",
  config = function()
    require("carbon").setup({})

    require("which-key").register({
      l = {
        name = "List files",
        c = { "<cmd>Carbon<CR>", "Show files in this buffer" },
        f = { "<cmd>Fcarbon<CR>", "Show files on left" },
        l = { "<cmd>Lcarbon<CR>", "Show files in floating window" },
      },
    }, {
      prefix = "<Leader>",
    })
  end,
})

local eunuch_spec = use("tpope/vim-eunuch", {
  event = "CmdlineEnter",
})

local project_spec = use("ahmedkhalf/project.nvim", {
  dependencies = { use("nvim-telescope/telescope.nvim") },
  event = "CursorHold",
  config = function()
    require("project_nvim").setup({
      manual_mode = true,
      silent_chdir = false,
    })
    require("telescope").load_extension("projects")
  end,
})

local zoxide_spec = use("nanotee/zoxide.vim", {
  event = "CursorHold",
})

return {
  carbon_spec,
  eunuch_spec,
  project_spec,
  zoxide_spec,
}

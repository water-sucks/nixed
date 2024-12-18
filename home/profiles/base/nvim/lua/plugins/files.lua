local eunuch_spec = use("tpope/vim-eunuch", {
  event = "CmdlineEnter",
})

local project_spec = use("ahmedkhalf/project.nvim", {
  dependencies = { use("nvim-telescope/telescope.nvim") },
  event = "VeryLazy",
  config = function()
    require("project_nvim").setup({
      manual_mode = true,
      silent_chdir = false,
    })
    require("telescope").load_extension("projects")
  end,
})

local zoxide_spec = use("nanotee/zoxide.vim", {
  event = "CmdlineEnter",
})

local oil_spec = use("stevearc/oil.nvim", {
  opts = {
    skip_confirm_for_simple_edits = true,
    watch_for_changes = true,
    view_options = {
      show_hidden = true,
    },
    float = {
      max_width = 90,
      max_height = 30,
      border = "single",
    },
    use_default_keymaps = true,
    keymaps = {
      ["q"] = { "actions.close", mode = "n" },
    },
  },
  keys = {
    { "<Leader>`", "<Cmd>Oil --float<CR>", { desc = "Open file manager" } },
    { "<Leader>L", "<Cmd>Oil<CR>", { desc = "Open file manager (full)" } },
  },
})

return {
  eunuch_spec,
  project_spec,
  zoxide_spec,
  oil_spec,
}

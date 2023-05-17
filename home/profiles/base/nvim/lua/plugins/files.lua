local nvim_tree_spec = use("nvim-tree/nvim-tree.lua", {
  event = "VeryLazy",
})
nvim_tree_spec.config = function()
  local api = require("nvim-tree.api")
  local event = api.events.Event

  require("nvim-tree").setup({
    renderer = {
      icons = {
        git_placement = "after",
        glyphs = {
          git = {
            deleted = "",
            ignored = "",
            staged = "",
            unmerged = "󰽜",
            unstaged = "",
            untracked = "",
          },
        },
      },
    },
    sort_by = "case_sensitive",
  })

  -- Clear fill characters in NvimTree buffer
  api.events.subscribe(event.TreeOpen, function()
    vim.opt_local.fillchars = "eob: "
  end)

  require("which-key").register({
    l = { "<cmd>NvimTreeToggle<CR>", "Show files" },
  }, {
    prefix = "<Leader>",
  })
end

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

return {
  nvim_tree_spec,
  eunuch_spec,
  project_spec,
  zoxide_spec,
}

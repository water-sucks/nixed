return {
  use("folke/lazy.nvim", {
    enabled = false,
  }),
  use("nvim-lua/plenary.nvim"),
  use("folke/which-key.nvim", {
    config = function()
      require("which-key").setup({
        plugins = {
          presets = {
            g = false,
          },
        },
        icons = {
          rules = false,
        },
      })

      vim.keymap.set({ "n", "v", "x", "o" }, "s", "<cmd>WhichKey n s<CR>")
    end,
  }),
}

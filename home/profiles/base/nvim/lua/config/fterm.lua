require("FTerm").setup({
  blend = 10,
  dimensions = {
    height = 0.6,
    width = 0.6,
  },
})

require("which-key").register({
  t = {
    name = "Terminal",
    t = {
      function()
        require("FTerm").toggle()
      end,
      "Toggle terminal",
    },
    o = {
      function()
        require("FTerm").open()
      end,
      "Open terminal",
    },
    c = {
      function()
        require("FTerm").close()
      end,
      "Open terminal",
    },
    k = {
      function()
        require("FTerm").exit()
      end,
      "Kill terminal",
    },
  },
}, {
  mode = { "n", "t" },
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})

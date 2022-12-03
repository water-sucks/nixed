require("neorg").setup({
  load = {
    ["core.defaults"] = {},
    ["core.norg.qol.toc"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          general = "~/Documents/Notes/General",
          schedule = "~/Documents/Notes/Schedule",
          reflections = "~/Documents/Notes/Reflections",
          music = "~/Documents/Notes/Music",
          coffee = "~/Documents/Notes/Coffee",
          programming = "~/Documents/Notes/Programming",
        },
        autochdir = true,
        index = "index.norg",
      },
    },
    ["core.norg.journal"] = {
      config = {
        journal_folder = "Journal",
        strategy = "nested",
      },
    },
    ["core.norg.news"] = {
      config = {
        check_news = false,
      },
    },
    ["core.norg.concealer"] = {}, -- Wait until this is more stable
  },
})

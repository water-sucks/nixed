local neorg_spec = use("nvim-neorg/neorg", {
  dependencies = { use("nvim-neorg/neorg-telescope") },
  ft = "norg",
})

neorg_spec.config = function()
  local wk = require("which-key")

  local neorg = require("neorg")
  local config = require("neorg.config")

  neorg.setup({
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
      ["core.norg.esupports.metagen"] = {
        config = {
          type = "empty",
          tab = "",
          template = {
            {
              "title",
              function()
                return vim.fn.expand("%:p:t:r")
              end,
            },
            { "description", "" },
            { "authors", "Varun Narravula" },
            { "categories", "" },
            { "version", config.version },
          },
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
      ["core.highlights"] = {
        config = {
          highlights = require("darkrose.integrations.neorg").generate(),
          todo_items_match_color = "except_undone",
        },
      },
      ["core.norg.concealer"] = {
        config = {
          icons = {
            todo = {
              enabled = true,
              done = { icon = "" },
              pending = { icon = "" },
              undone = { enabled = false },
              uncertain = { icon = "" },
              on_hold = { icon = "" },
              cancelled = { icon = "ﲅ" },
              recurring = { icon = "ﮫ" },
              urgent = { icon = "" },
            },
            heading = {
              enabled = true,
              level_1 = { icon = "◈" },
              level_2 = { icon = " ◇" },
              level_3 = { icon = "  ◆" },
              level_4 = { icon = "   ⋄" },
              level_5 = { icon = "    ❖" },
              level_6 = { icon = "     ⟡" },
            },
            list = {
              enabled = true,
              level_1 = { icon = "" },
              level_2 = { icon = " " },
              level_3 = { icon = "  " },
              level_4 = { icon = "   " },
              level_5 = { icon = "    " },
              level_6 = { icon = "     " },
            },
            definition = {
              single = { icon = "≡" },
              multi_prefix = { icon = "󰂺 " },
              multi_suffix = { icon = "󰂺 " },
            },
            footnote = {
              single = { icon = "󰇈 " },
              multi_prefix = { icon = "󰮊 " },
              multi_suffix = { icon = "󰮊 " },
            },
          },
        },
      },
      ["core.norg.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.keybinds"] = {
        config = {
          hook = function()
            wk.register({
              t = {
                name = "Tasks",
                c = "Mark task canceled",
                d = "Mark task done",
                h = "Mark task on hold",
                i = "Mark task important",
                p = "Mark task pending",
                r = "Mark task recurring",
                u = "Mark task undone",
              },

              n = "New note",
              p = { "<cmd>Neorg presenter start<CR>", "Start presenter" },
              c = { "<cmd>Neorg toggle-concealer<CR>", "Toggle concealer" },

              h = {
                name = "Hop",
                g = "Open link",
                v = "Open link in vsplit",
              },

              j = "Next heading",
              k = "Previous heading",
            }, {
              prefix = "<LocalLeader>",
              bufnr = 0,
            })
          end,
          keybind_presets = {
            neorg = function(keybinds)
              -- This is a slightly misleading name; it's the localleader key.
              local leader = keybinds.leader

              -- Map all the below keybinds only when the "norg" mode is active
              keybinds.map_event_to_mode("norg", {
                n = {
                  {
                    leader .. "tc",
                    "core.norg.qol.todo_items.todo.task_cancelled",
                    "Mark task canceled",
                  },
                  { leader .. "td", "core.norg.qol.todo_items.todo.task_done", "Mark task done" },
                  { leader .. "th", "core.norg.qol.todo_items.todo.task_on_hold", "Mark task on hold" },
                  {
                    leader .. "ti",
                    "core.norg.qol.todo_items.todo.task_important",
                    "Mark task important",
                  },
                  { leader .. "tp", "core.norg.qol.todo_items.todo.task_pending", "Mark task pending" },
                  {
                    leader .. "tr",
                    "core.norg.qol.todo_items.todo.task_recurring",
                    "Mark task recurring",
                  },
                  { leader .. "tu", "core.norg.qol.todo_items.todo.task_undone", "Mark task undone" },

                  { leader .. "n", "core.norg.dirman.new.note" },

                  { leader .. "hg", "core.norg.esupports.hop.hop-link" },
                  { leader .. "hv", "core.norg.esupports.hop.hop-link", "vsplit" },

                  { leader .. "j", "core.integrations.treesitter.next.heading" },
                  { leader .. "k", "core.integrations.treesitter.previous.heading" },
                },

                i = {
                  { "<C-l>", "core.integrations.telescope.insert_link" },
                },
              }, {
                silent = true,
                noremap = true,
              })

              keybinds.map_event_to_mode("toc-split", {
                n = {
                  { "hg", "core.norg.qol.toc.hop-toc-link" },
                  { "q", "core.norg.qol.toc.close" },
                  { "<Esc>", "core.norg.qol.toc.close" },
                },
              }, {
                silent = true,
                noremap = true,
                nowait = true,
              })

              -- Map the below keys on presenter mode
              keybinds.map_event_to_mode("presenter", {
                n = {
                  { "<CR>", "core.presenter.next_page" },
                  { "l", "core.presenter.next_page" },
                  { "h", "core.presenter.previous_page" },

                  { "q", "core.presenter.close" },
                  { "<Esc>", "core.presenter.close" },
                },
              }, {
                silent = true,
                noremap = true,
                nowait = true,
              })
            end,
          },
        },
      },
      ["core.presenter"] = {
        config = {
          zen_mode = "zen-mode",
        },
      },
    },
  })
end

return {
  neorg_spec,
}

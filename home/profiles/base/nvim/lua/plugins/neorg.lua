local luarocks_spec = use("vhyrro/luarocks.nvim", {
  priority = 1000,
  config = true,
})

local file_exists_and_is_empty = function(filepath)
  local file = io.open(filepath, "r")
  if file ~= nil then
    local content = file:read("*all")
    file:close()
    return content == ""
  else
    return false
  end
end

local neorg_spec = use("nvim-neorg/neorg", {
  dependencies = {
    use("vhyrro/luarocks.nvim"),
    use("nvim-neorg/neorg-telescope"),
    use("pysan3/neorg-templates", { dependencies = { use("L3MON4D3/LuaSnip") } }),
  },
  lazy = false,
})

neorg_spec.config = function()
  local wk = require("which-key")

  local neorg = require("neorg")
  local config = require("neorg.core.config")
  local notes_dir = vim.env.HOME .. "/Documents/Notes"

  neorg.setup({
    load = {
      ["core.defaults"] = {},
      ["core.qol.toc"] = {},
      ["core.dirman"] = {
        config = {
          workspaces = {
            general = notes_dir .. "/General",
            schedule = notes_dir .. "/Schedule",
            reflections = notes_dir .. "/Reflections",
            music = notes_dir .. "/Music",
            programming = notes_dir .. "/Programming",
          },
          autochdir = true,
          index = "index.norg",
        },
      },
      ["core.esupports.metagen"] = {
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
      ["core.export"] = {},
      ["core.journal"] = {
        config = {
          journal_folder = ".",
          strategy = "nested",
        },
      },
      ["core.highlights"] = {
        config = {
          highlights = require("darkrose.integrations.neorg").generate(),
          todo_items_match_color = "except_undone",
        },
      },
      ["core.concealer"] = {
        config = {
          icons = {
            todo = {
              done = { icon = "" },
              pending = { icon = "󰇘" },
              undone = { icon = " " },
              uncertain = { icon = "" },
              on_hold = { icon = "" },
              cancelled = { icon = "󰜺" },
              recurring = { icon = "" },
              urgent = { icon = "" },
            },
            heading = {
              icons = { "◈", "◇", "◆", "⋄", "❖", "⟡" },
            },
            list = {
              icons = { "", "", "", "", "", "" },
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
      ["core.completion"] = {
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
                a = "Mark task ambiguous",
                c = "Mark task canceled",
                d = "Mark task done",
                h = "Mark task on hold",
                i = "Mark task important",
                p = "Mark task pending",
                r = "Mark task recurring",
                u = "Mark task undone",
              },

              i = {
                name = "Insert",
              },

              m = {
                name = "Modes",
                h = "Navigate headings",
                l = "Navigate links",
                n = "Normal mode (norg)",
              },

              n = "New note",
              p = { "<cmd>Neorg presenter start<CR>", "Start presenter" },
              c = { "<cmd>Neorg toggle-concealer<CR>", "Toggle concealer" },

              j = "Traverse next",
              k = "Traverse previous",

              l = {
                name = "List type",
                i = "Invert list type",
                t = "Toggle list type",
              },
            }, {
              prefix = "<LocalLeader>",
              bufnr = 0,
            })

            wk.register({
              [">"] = {
                ["."] = "Promote",
                [">"] = "Promote nested",
              },
              ["<"] = {
                [","] = "Demote",
                ["<"] = "Demote nested",
              },
            })
          end,
          keybind_presets = {
            neorg = function(keybinds)
              -- This is a slightly misleading name; it's the localleader key.
              local leader = keybinds.leader

              -- Map all the below keybinds only when the "norg" mode is active
              keybinds.map_event_to_mode("norg", {
                n = {
                  { leader .. "ta", "core.qol.todo_items.todo.task_ambiguous" },
                  { leader .. "tc", "core.qol.todo_items.todo.task_cancelled" },
                  { leader .. "td", "core.qol.todo_items.todo.task_done" },
                  { leader .. "th", "core.qol.todo_items.todo.task_on_hold" },
                  { leader .. "ti", "core.qol.todo_items.todo.task_important" },
                  { leader .. "tp", "core.qol.todo_items.todo.task_pending" },
                  { leader .. "tr", "core.qol.todo_items.todo.task_recurring" },
                  { leader .. "tu", "core.qol.todo_items.todo.task_undone", "Mark task undone" },

                  { leader .. "n", "core.dirman.new.note" },

                  { leader .. "j", "core.integrations.treesitter.next.heading" },
                  { leader .. "k", "core.integrations.treesitter.previous.heading" },

                  { ">.", "core.promo.promote" },
                  { "<,", "core.promo.demote" },
                  { ">>", "core.promo.promote", "nested" },
                  { "<<", "core.promo.demote", "nested" },

                  { leader .. "lt", "core.pivot.toggle-list-type" },
                  { leader .. "li", "core.pivot.invert-list-type" },
                },

                i = {
                  { "<C-t>", "core.promo.promote" },
                  { "<C-d>", "core.promo.demote" },
                  { "<M-CR>", "core.itero.next-iteration" },
                },
              }, {
                silent = true,
                noremap = true,
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
      ["external.templates"] = {
        config = {
          default_subcommand = "fload",
          keywords = {
            TODAY_NAME = function()
              return require("luasnip").insert_node(1, os.date([[%B %d, %Y]]))
            end,
            NEORG_VERSION = function()
              return require("luasnip").insert_node(1, config.version)
            end,
          },
          snippets_overwrite = {
            AUTHOR = "Varun Narravula",
          },
        },
      },
    },
  })

  vim.api.nvim_create_autocmd({ "BufNew", "BufNewFile" }, {
    callback = function(args)
      local toc = "index.norg"

      vim.schedule(function()
        if vim.fn.fnamemodify(args.file, ":t") == toc then
          return
        end
        if args.event == "BufNewFile" or (args.event == "BufNew" and file_exists_and_is_empty(args.file)) then
          vim.api.nvim_cmd({ cmd = "Neorg", args = { "templates", "fload", "schedule" } }, {})
        end
      end)
    end,
    desc = "Load new schedule entries with Neorg template",
    pattern = notes_dir .. "/Schedule/????/??/??.norg",
  })
end

return {
  luarocks_spec,
  neorg_spec,
}

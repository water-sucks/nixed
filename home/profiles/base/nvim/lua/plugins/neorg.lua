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
  local norg_snippets = require("neorg.modules.external.templates.default_snippets")
  local ls = require("luasnip")

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
      ["core.keybinds"] = {},
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
              return ls.text_node(norg_snippets.parse_date(0, norg_snippets.file_name_date(), [[%B %d, %Y]]))
            end,
            NEORG_VERSION = function()
              return ls.text_node(config.version)
            end,
          },
          snippets_overwrite = {
            AUTHOR = "Varun Narravula",
          },
        },
      },
    },
  })

  vim.api.nvim_create_autocmd("Filetype", {
    pattern = "norg",
    callback = function()
      wk.add({
        {
          buffer = true,
          { "<LocalLeader>t", group = "Tasks" },
          { "<LocalLeader>ta", desc = "Mark task ambiguous" },
          { "<LocalLeader>tc", desc = "Mark task canceled" },
          { "<LocalLeader>td", desc = "Mark task done" },
          { "<LocalLeader>th", desc = "Mark task on hold" },
          { "<LocalLeader>ti", desc = "Mark task important" },
          { "<LocalLeader>tp", desc = "Mark task pending" },
          { "<LocalLeader>tr", desc = "Mark task recurring" },
          { "<LocalLeader>tu", desc = "Mark task undone" },

          { "<LocalLeader>i", desc = "Insert" },
          { "<LocalLeader>id", desc = "Insert date" },

          { "<LocalLeader>n", group = "New" },
          { "<LocalLeader>nn", desc = "New note" },

          { "<LocalLeader>p", "<cmd>Neorg presenter start<CR>", desc = "Start presenter" },
          { "<LocalLeader>c", "<cmd>Neorg toggle-concealer<CR>", desc = "Toggle concealer" },

          { "<LocalLeader>l", group = "List" },
          { "<LocalLeader>li", desc = "Invert list type" },
          { "<LocalLeader>lt", desc = "Toggle list type" },

          { ">.", desc = "Promote" },
          { ">>", desc = "Promote nested" },
          { "<,", desc = "Demote" },
          { "<<", desc = "Demote nested" },
        },
      })
    end,
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

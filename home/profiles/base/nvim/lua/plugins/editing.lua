local autopairs_spec = use("windwp/nvim-autopairs", {
  event = "InsertEnter",
})
autopairs_spec.config = function()
  local map = vim.api.nvim_set_keymap
  local autopairs = require("nvim-autopairs")

  autopairs.setup({
    map_bs = false,
    map_cr = false,
  })

  _G.MUtils = {}

  MUtils.CR = function()
    if vim.fn.pumvisible() ~= 0 then
      if vim.fn.complete_info({ "selected" }).selected ~= -1 then
        return autopairs.esc("<c-y>")
      else
        return autopairs.esc("<c-e>") .. autopairs.autopairs_cr()
      end
    else
      return autopairs.autopairs_cr()
    end
  end
  map("i", "<cr>", "v:lua.MUtils.CR()", { expr = true, noremap = true })

  MUtils.BS = function()
    if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ "mode" }).mode == "eval" then
      return autopairs.esc("<c-e>") .. autopairs.autopairs_bs()
    else
      return autopairs.autopairs_bs()
    end
  end
  map("i", "<bs>", "v:lua.MUtils.BS()", { expr = true, noremap = true })
end

local comment_spec = use("numToStr/Comment.nvim", {
  event = "VeryLazy",
  config = function()
    require("Comment").setup({
      padding = true,
      sticky = true,
      ignore = nil,
      toggler = {
        line = "<Leader>cc",
        block = "<Leader>bc",
      },
      opleader = {
        line = "<Leader>c",
        block = "<Leader>b",
      },
      extra = {
        above = "<Leader>cO",
        below = "<Leader>co",
        eol = "<Leader>ca",
      },
      mappings = {
        basic = true,
        extra = true,
        extended = false,
      },
    })
  end,
})

local minimove = use("echasnovski/mini.move", {
  event = "VeryLazy",
})
minimove.config = function()
  require("mini.move").setup({
    mappings = {
      left = "H",
      right = "L",
      down = "J",
      up = "K",

      line_left = "H",
      line_right = "L",
      line_down = "J",
      line_up = "K",
    },
    options = {
      reindent_linewise = true,
    },
  })
end

local leap_spec = use("ggandor/leap.nvim", {
  event = "VeryLazy",
})
leap_spec.config = function()
  local wk = require("which-key")

  wk.add({
    {
      mode = { "n", "x", "o" },

      { "ss", "<Plug>(leap-forward-to)", desc = "Leap forward" },
      { "sS", "<Plug>(leap-backward-to)", desc = "Leap backward" },
      { "sw", "<Plug>(leap-cross-window)", desc = "Leap across windows" },
    },
  })

  wk.add({
    {
      mode = { "x", "o" },
      { "su", "<Plug>(leap-forward-till)", desc = "Leap forward until" },
      { "sU", "<Plug>(leap-backward-till)", desc = "Leap backward until" },
    },
  })
end

local repeat_spec = use("tpope/vim-repeat", {
  event = "VeryLazy",
})

local sort_spec = use("sQVe/sort.nvim", {
  event = "VeryLazy",
  config = function()
    require("config.sort")
  end,
})
sort_spec.config = function()
  local wk = require("which-key")

  require("sort").setup()

  wk.add({
    { "<Leader>1", group = "Sort" },
    { "<Leader>1o", "<Cmd>Sort<CR>", desc = "Sort line" },
    { '<Leader>1"', 'vi"<Esc>:Sort<CR>', desc = 'Sort until "' },
    { "<Leader>1'", "vi'<Esc>:Sort<CR>", desc = "Sort until '" },
    { "<Leader>1(", "vi(<Esc>:Sort<CR>", desc = "Sort block inside ()" },
    { "<Leader>1[", "vi[<Esc>:Sort<CR>", desc = "Sort block inside []" },
    { "<Leader>1{", "vi{<Esc>:Sort<CR>", desc = "Sort block inside {}" },
    { "<Leader>1p", "vip<Esc>:Sort<CR>", desc = "Sort block inside paragraph" },
    { "<Leader>s", "<Esc><Cmd>Sort<CR>", desc = "Sort selection", mode = "v" },
  })
end

local surround_spec = use("echasnovski/mini.surround", {
  event = "VeryLazy",
  config = function()
    require("mini.surround").setup()
  end,
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

local notes_dir = vim.env.HOME .. "/Documents/Notes"

local template_spec = use("nvimdev/template.nvim", {
  config = function()
    require("template").setup({
      temp_dir = vim.fn.stdpath("config") .. "/templates",
    })

    vim.api.nvim_create_autocmd({ "BufNewFile" }, {
      callback = function(args)
        vim.schedule(function()
          if args.event == "BufNewFile" or (args.event == "BufNew" and file_exists_and_is_empty(args.file)) then
            vim.api.nvim_cmd({ cmd = "Template", args = { "schedule" } }, {})
          end
        end)
      end,
      desc = "Load new schedule entries with template",
      pattern = notes_dir .. "/Schedule/????/??/??.md",
    })
  end,
})

local neocodeium_spec = use("monkoose/neocodeium", {
  config = function()
    local neocodeium = require("neocodeium")
    local wk = require("which-key")

    neocodeium.setup({
      enabled = false,
      bin = vim.fn.exepath("codeium_language_server"),
      manual = true,
      silent = true,
      filetypes = {
        markdown = false,
        gitcommit = false,
        gitrebase = false,
        TelescopePrompt = false,
        ["dap-repl"] = false,
        DressingInput = false,
      },
    })

    wk.add({
      { "<A-CR>", neocodeium.accept, desc = "Accept suggestion", mode = "i" },
      { "<A-w>", neocodeium.accept_word, desc = "Accept word", mode = "i" },
      { "<A-a>", neocodeium.accept_line, desc = "Accept line", mode = "i" },
      { "<A-f>", neocodeium.cycle_or_complete, desc = "Cycle forward", mode = "i" },
      {
        "<A-f>",
        function()
          neocodeium.cycle_or_complete(-1)
        end,
        desc = "Cycle backwards",
        mode = "i",
      },
      { "<A-c>", neocodeium.clear, desc = "Clear suggestion", mode = "i" },

      { "<Leader>g", group = "NeoCodeium" },
      { "<Leader>gt", "<Cmd>NeoCodeium toggle<CR>", desc = "Toggle NeoCodeium", mode = "n" },
      { "<Leader>gk", "<Cmd>NeoCodeium! disable<CR>", desc = "Kill NeoCodeium", mode = "n" },
      { "<Leader>gb", "<Cmd>NeoCodeium toggle_buffer<CR>", desc = "Toggle NeoCodeium (buffer)", mode = "n" },
      { "<Leader>gr", "<Cmd>NeoCodeium restart<CR>", desc = "Restart NeoCodeium", mode = "n" },
    })
  end,
})

local hardtime_spec = use("m4xshen/hardtime.nvim", {
  dependencies = { use("MunifTanjim/nui.nvim") },
  opts = {
    -- Turn on manually for now. This is a hard plugin to get used to
    -- when being productive.
    enabled = false,
  },
  keys = {
    {
      "<Leader>t",
      function()
        require("hardtime").toggle()
      end,
      desc = "Toggle 'um akshually'",
    },
  },
})

return {
  autopairs_spec,
  comment_spec,
  hardtime_spec,
  minimove,
  leap_spec,
  neocodeium_spec,
  repeat_spec,
  sort_spec,
  surround_spec,
  template_spec,
}

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

local dial_spec = use("monaqa/dial.nvim", {
  event = "VeryLazy",
})
dial_spec.config = function()
  local map = vim.keymap.set
  local augend = require("dial.augend")
  local wk = require("which-key")

  require("dial.config").augends:register_group({
    default = {
      augend.integer.alias.decimal_int,
      augend.integer.alias.hex,
      augend.integer.alias.binary,
      augend.constant.alias.Alpha,
      augend.constant.alias.alpha,
      augend.constant.alias.bool,
      augend.date.alias["%m/%d/%Y"],
      augend.date.alias["%H:%M"],
      augend.date.alias["%H:%M:%S"],
      augend.semver.alias.semver,
      augend.hexcolor.new({
        case = "lower",
      }),
    },
  })

  map("n", "<C-a>", require("dial.map").inc_normal(), { silent = true })
  map("n", "<C-x>", require("dial.map").dec_normal(), { silent = true })
  map("v", "<C-a>", require("dial.map").inc_visual(), { silent = true })
  map("v", "<C-x>", require("dial.map").dec_visual(), { silent = true })
  map("v", "g<C-a>", require("dial.map").inc_gvisual(), { silent = true })
  map("v", "g<C-x>", require("dial.map").dec_gvisual(), { silent = true })

  wk.register({
    ["["] = { require("dial.map").inc_normal(), "Increment" },
    ["]"] = { require("dial.map").dec_normal(), "Decrement" },
  }, {
    prefix = "<Leader>",
  })

  wk.register({
    ["["] = { require("dial.map").inc_visual(), "Increment" },
    ["]"] = { require("dial.map").dec_visual(), "Decrement" },
  }, {
    mode = "x",
    prefix = "<Leader>",
  })
end

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

  wk.register({
    ss = { "<Plug>(leap-forward-to)", "Leap forward" },
    sS = { "<Plug>(leap-backward-to)", "Leap backward" },
    sw = { "<Plug>(leap-cross-window)", "Leap across windows" },
  }, {
    mode = { "n", "x", "o" },
  })

  wk.register({
    u = { "<Plug>(leap-forward-till)", "Leap forward until" },
    U = { "<Plug>(leap-backward-till)", "Leap backward until" },
  }, {
    mode = { "x", "o" },
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

  require("sort").setup({})

  wk.register({
    ["1"] = {
      name = "Sort",
      o = { "<Cmd>Sort<CR>", "Sort line" },
      ['"'] = { 'vi"<Esc>:Sort<CR>', 'Sort until "' },
      ["'"] = { "vi'<Esc>:Sort<CR>", "Sort until '" },
      ["("] = { "vi(<Esc>:Sort<CR>", "Sort block inside ()" },
      ["["] = { "vi[<Esc>:Sort<CR>", "Sort block inside []" },
      ["{"] = { "vi{<Esc>:Sort<CR>", "Sort block inside {}" },
      ["p"] = { "vip<Esc>:Sort<CR>", "Sort block inside paragraph" },
    },
  }, {
    prefix = "<Leader>",
  })

  wk.register({
    s = { "<Esc><Cmd>Sort<CR>", "Sort selection" },
  }, {
    mode = "v",
    prefix = "<Leader>",
  })
end

local surround_spec = use("echasnovski/mini.surround", {
  event = "VeryLazy",
  config = function()
    require("mini.surround").setup()
  end,
})

return {
  autopairs_spec,
  comment_spec,
  dial_spec,
  minimove,
  leap_spec,
  repeat_spec,
  sort_spec,
  surround_spec,
}

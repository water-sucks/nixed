local cmp = require("cmp")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local luasnip = require("luasnip")

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
  enabled = function()
    local context = require("cmp.config.context")
    if vim.api.nvim_get_mode().mode == "c" then
      return true
    end
    if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
      return false
    end
    if require("cmp_dap").is_dap_buffer() then
      return true
    end
    return not context.in_treesitter_capture("comment") and not context.in_syntax_group("Comment")
  end,
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  completion = {
    keyword_length = 1,
    completeopt = "menu,noselect",
  },
  view = {
    entries = "custom",
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "path" },
    { name = "calc" },
    { name = "buffer" },
  }),
  formatting = {
    format = require("lspkind").cmp_format({
      mode = "symbol_text",
      menu = {
        nvim_lsp = "[LSP]",
        luasnip = "[SNIP]",
        path = "[PATH]",
        omni = "[OMNI]",
        calc = "[CALC]",
        buffer = "[BUF]",
        cmdline = "[CMD]",
      },
    }),
  },
  window = {
    completion = {
      border = "single",
      winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
    },
    documentation = {
      border = "single",
    },
  },
})

cmp.setup.filetype("tex", {
  sources = cmp.config.sources({
    { name = "omni" },
  }),
})

cmp.setup.filetype("norg", {
  sources = cmp.config.sources({
    { name = "neorg" },
  }),
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})

cmp.setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
  sources = {
    { name = "dap" },
  },
})

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

require("luasnip.loaders.from_vscode").lazy_load()

local ok, latex_snippets = pcall(require, "lua-latex-snippets")
if ok then
  latex_snippets.setup()
end

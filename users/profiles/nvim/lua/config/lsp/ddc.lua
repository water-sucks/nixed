local call = vim.call
local map = vim.keymap.set

call("ddc#custom#patch_global", { "completionMenu", "pum.vim" })

call("ddc#custom#patch_global", {
  sources = { "nvim-lsp", "vsnip", "around", "buffer" },
  sourceOptions = {
    ["_"] = {
      matchers = { "matcher_fuzzy" },
      sorters = { "sorter_fuzzy" },
      converters = { "converter_fuzzy" },
    },
    ["nvim-lsp"] = {
      mark = "LSP",
      forceCompletionPattern = "\\.|:|->",
      maxItems = 13,
    },
    vsnip = {
      mark = "VSNIP",
      maxItems = 5,
    },
    around = {
      mark = "AROUND",
      maxItems = 5,
    },
    buffer = {
      mark = "BUFFER",
      maxItems = 5,
    },
  },
})

-- VimTeX omnifunc source
call("ddc#custom#patch_filetype", "tex", {
  sourceOptions = {
    omni = {
      forceCompletionPattern = "g:vimtex#re#deoplete",
    },
  },
  sourceParams = {
    omni = {
      {
        omnifunc = "vimtex#completion#omnifunc",
      },
    },
  },
})

-- Different source for markdown filetype
call("ddc#custom#patch_filetype", "markdown", {
  sources = { "around", "buffer" },
})

-- Tab mappings
map(
  "i",
  "<TAB>",
  [[ddc#map#pum_visible() ? "<C-n>" : (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ? '<TAB>' : ddc#map#manual_complete()]],
  { expr = true, silent = true, noremap = true }
)
map("i", "<S-TAB>", [[ddc#map#pum_visible() ? "<C-p>" : "<C-h>"]], { expr = true, noremap = true })

-- Enable on startup
call("popup_preview#enable")
call("ddc#enable")

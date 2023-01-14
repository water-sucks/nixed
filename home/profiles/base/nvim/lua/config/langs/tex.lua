local wk = require("which-key")

vim.g.vimtex_view_method = "sioyek"
vim.g.vimtex_compiler_method = "latexrun"

-- Neovim compilation callback support with remote
vim.g.vimtex_compiler_progname = "nvr"
vim.g.vimtex_view_reverse_search_edit_cmd = "nvr --remote-silent %f -c %l"

-- Using Treesitter requires these settings
-- vim.g.vimtex_syntax_enabled = 0
-- vim.g.vimtex_syntax_conceal_disable = 1

vim.g.vimtex_compiler_silent = 1
vim.g.vimtex_complete_bib = {
  simple = 1,
  menu_fmt = "@year, @author_short, @title",
}
vim.g.vimtex_echo_verbose_input = 0

wk.register({
  l = {
    name = "VimTeX",
    a = "Context menu",
    i = "Info",
    I = "Full info",
    t = "Open ToC",
    T = "Toggle ToC",
    y = "Open labels",
    Y = "Toggle labels",
    v = "View",
    r = "Reverse search",
    l = "Compile",
    L = "Compile selected",
    k = "Stop",
    K = "Stop all",
    e = "Errors",
    o = "Compiler output",
    g = "Status",
    G = "Full status",
    c = "Clean",
    C = "Full clean",
    m = "List imaps",
    x = "Reload",
    X = "Reload state",
    s = "Toggle main",
    q = "Logs",
  },
}, {
  prefix = "<LocalLeader>",
})

wk.register({
  ds = {
    c = "Command",
    d = "Delimiter",
    e = "Environment",
    ["$"] = "Math environment",
  },

  cs = {
    c = "Command",
    d = "Delimiter",
    e = "Environment",
    ["$"] = "Math environment",
  },

  ts = {
    name = "Toggle",
    c = "Star",
    d = "Modifier",
    D = "Modifier (reversed)",
    e = "Star (environment)",
    f = "Fraction",
    ["$"] = "Math",
  },
}, {})

wk.register({
  i = {
    c = "Command",
    d = "Delimiter",
    e = "Environment",
    m = "Item",
    P = "Section",
    ["$"] = "Math environment",
  },

  a = {
    c = "Command",
    d = "Delimiter",
    e = "Environment",
    m = "Item",
    P = "Section",
    ["$"] = "Math environment",
  },
}, {
  mode = "o",
})

wk.register({
  ["]"] = {
    ["["] = "Next section start",
    ["]"] = "Next section end",
    ["/"] = "Next comment start",
    ["*"] = "Next comment end",
    m = "Next section start",
    M = "Next section end",
    n = "Next math env start",
    N = "Next math env end",
    r = "Next frame env start",
    R = "Next frame env end",
  },

  ["["] = {
    ["["] = "Previous section start",
    ["]"] = "Previous section end",
    ["/"] = "Previous comment start",
    ["*"] = "Previous comment end",
    m = "Previous section start",
    M = "Previous section end",
    n = "Previous math env start",
    N = "Previous math env end",
    r = "Previous frame env start",
    R = "Previous frame env end",
  },
}, {
  mode = { "n", "x", "o" },
})

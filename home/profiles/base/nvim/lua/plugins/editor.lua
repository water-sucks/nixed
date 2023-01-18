local use = require("utils").use

local autosave_spec = use("Pocco81/auto-save.nvim", {
  event = "CursorHold",
  config = function()
    local autosave = require("auto-save")

    autosave.setup({
      -- For some reason, this option is not working.
      -- I'll set it manually instead
      enabled = false,
      execution_message = {
        message = function()
          return "Autosaved at " .. vim.fn.strftime("%H:%M:%S")
        end,
      },
    })

    autosave.off()
  end,
})

local editorconfig_spec = use("gpanders/editorconfig.nvim", {
  event = "BufRead",
})

local guess_indent_spec = use("NMAC427/guess-indent.nvim", {
  config = function()
    require("guess-indent").setup({
      filetype_exclude = {
        "carbon.explorer",
        "FTerm",
      },
    })
  end,
})

return {
  autosave_spec,
  editorconfig_spec,
  guess_indent_spec,
}
local bmessages_spec = use("ariel-frischer/bmessages.nvim", {
  event = "VeryLazy",
  opts = {
    autoscroll = true,
  },
  keys = {
    { "<Leader>m", "<Cmd>Bmessagessp<CR><C-W>r", desc = "Show messages" },
  },
})

local fidget_spec = use("j-hui/fidget.nvim", {
  opts = {
    progress = {
      display = {
        render_limit = 10,
        done_icon = "󰄬",
      },
    },
  },
})

return {
  fidget_spec,
  bmessages_spec,
}

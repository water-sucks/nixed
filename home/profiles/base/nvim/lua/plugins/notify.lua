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
}

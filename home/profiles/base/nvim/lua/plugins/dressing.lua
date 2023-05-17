local dressing_spec = use("stevearc/dressing.nvim", {
  event = "VeryLazy",
})

dressing_spec.config = function()
  require("dressing").setup({
    select = {
      get_config = function(opts)
        if opts.kind == "codeaction" then
          return {
            backend = "telescope",
            telescope = require("telescope.themes").get_cursor({}),
          }
        end
      end,
    },
  })
end

return {
  dressing_spec,
}

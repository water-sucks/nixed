vim.filetype.add({
  extension = {
    ncl = "nickel",
    just = "just",
    mdx = "markdown",
  },
  filename = {
    Justfile = "just",
    justfile = "just",
    [".Justfile"] = "just",
    [".justfile"] = "just",
  },
})

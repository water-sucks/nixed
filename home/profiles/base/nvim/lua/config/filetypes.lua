vim.filetype.add({
  extension = {
    ncl = "nickel",
    just = "just",
  },
  filename = {
    Justfile = "just",
    justfile = "just",
    [".Justfile"] = "just",
    [".justfile"] = "just",
  },
})

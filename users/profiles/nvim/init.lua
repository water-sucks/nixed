local ok, impatient = pcall(require, "impatient")
if ok then
  impatient.enable_profile()
end

local modules = { "options", "autocmds", "mappings", "commands" }

for _, module in ipairs(modules) do
  ok = pcall(require, module)
  if not ok then
    print("Uh oh! The " .. module .. " module failed to load.")
  end
end

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  print("Cloning packer ..")

  fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })

  print("Packer cloned successfully!")

  vim.cmd("packadd packer.nvim")
  require("plugins")
  require("packer").sync()
end

require("plugins")

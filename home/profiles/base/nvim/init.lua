local modules = { "options", "autocmds", "mappings", "commands", "filetypes" }
for _, module in ipairs(modules) do
  local ok = pcall(require, "config." .. module)
  if not ok then
    print("Uh oh! The " .. module .. " module failed to load.")
  end
end

local plugin_dir = vim.fn.stdpath("data") .. "/plugins"
for _, path in ipairs(vim.fn.glob(plugin_dir .. "/*", true, true)) do
  vim.opt.runtimepath:append(path)
end

for _, plugin in ipairs({
  "core",
  "lsp",
  "colors",
  "appearance",
  "lualine",
  "treesitter",
  "telescope",
  "editing",
  "langs",
  "fun",
}) do
  local ok, err = pcall(require, "plugins." .. plugin)
  if not ok then
    print("Failed to load " .. plugin .. ": " .. tostring(err))
  end
end

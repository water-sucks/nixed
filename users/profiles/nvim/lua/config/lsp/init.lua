local files = {
  "servers",
  "handlers",
}

for _, file in ipairs(files) do
  require("config.lsp." .. file)
end

local files = { "coq", "servers" }

for _, file in ipairs(files) do
  require("config.lsp." .. file)
end

local M = {}

-- Find either the Nix-generated version of the plugin if it is
-- found, or fall back to fetching it remotely if it is not.
-- Don't mistake this for "use" from packer.nvim
M.use = function(name, spec)
  spec = spec or {}
  local plugin_name = name:match("[^/]+$")
  local plugin_dir = vim.fn.stdpath("data") .. "/plugins/" .. plugin_name
  if vim.fn.isdirectory(plugin_dir) > 0 then
    spec["dir"] = plugin_dir
  else
    spec[1] = name
  end
  return spec
end

return M

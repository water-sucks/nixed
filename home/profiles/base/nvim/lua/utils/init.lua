-- Find either the Nix-generated version of the plugin if it is
-- found, or fall back to fetching it remotely if it is not.
-- Don't mistake this for "use" from packer.nvim
_G.use = function(name, spec)
  spec = spec or {}

  local plugin_name = name:match("[^/]+$")
  local plugin_dir = vim.fn.stdpath("data") .. "/plugins/" .. plugin_name

  -- This works around the automatic dev plugin functionality, and falls
  -- back properly to the Nix-generated version if it exists.
  if spec.dev then
    local dev_plugin_dir = vim.env.HOME .. "/Code/NeovimPlugins/" .. plugin_name
    if vim.fn.isdirectory(dev_plugin_dir) > 0 then
      spec.dir = dev_plugin_dir
      spec.dev = nil
      return spec
    end
  end

  if vim.fn.isdirectory(plugin_dir) > 0 then
    spec.dir = plugin_dir
  else
    spec[1] = name
  end
  return spec
end

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
    spec.dev = nil

    local dev_plugin_dir = vim.env.HOME .. "/Code/NeovimPlugins/" .. plugin_name
    local dev_mode_marker = io.open(dev_plugin_dir .. "/.dev-mode")

    if dev_mode_marker ~= nil then
      dev_mode_marker:close()

      spec.dir = dev_plugin_dir
      return spec
    end
  end

  if vim.fn.isdirectory(plugin_dir) > 0 then
    spec.dir = plugin_dir
  else
    if spec.url == nil then
      spec[1] = name
    end
  end
  return spec
end

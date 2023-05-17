local duck_spec = use("tamton-aquib/duck.nvim", {
  event = "VeryLazy",
  config = function()
    local duck = require("duck")

    vim.api.nvim_create_user_command("Duck", function(opts)
      local animal = opts.fargs[1] or "🦆"

      duck.hatch(animal, 10)
    end, { nargs = "?" })

    vim.api.nvim_create_user_command("Ducks", function(opts)
      local number = tonumber(opts.fargs[1])
      if number < 1 then
        print("Error: number must be at least 1")
        return
      end

      local animal = opts.fargs[2] or "🦆"

      for _ = 1, number do
        duck.hatch(animal, 10)
      end
    end, { nargs = "+" })

    vim.api.nvim_create_user_command("CookDuck", function()
      duck.cook()
    end, {})

    vim.api.nvim_create_user_command("CookDucks", function()
      for _, _ in pairs(duck.ducks_list) do
        vim.schedule(function()
          duck.cook()
        end)
      end
    end, {})

    _G.duck_spawner = vim.loop.new_timer()
    _G.duck_killer = vim.loop.new_timer()

    vim.api.nvim_create_user_command("DuckSpawner", function(opts)
      local animal = opts.fargs[1] or "🦆"

      _G.duck_spawner:start(
        0,
        57000,
        vim.schedule_wrap(function()
          duck.hatch(animal, 10)
        end)
      )
      _G.duck_killer:start(
        3000,
        57000,
        vim.schedule_wrap(function()
          if duck.ducks_list[1] ~= nil then
            duck.cook()
          end
        end)
      )
    end, { nargs = "?" })

    vim.api.nvim_create_user_command("DuckKiller", function()
      if duck.ducks_list[1] ~= nil then
        duck.cook()
      end
      _G.duck_spawner:stop()
      _G.duck_killer:stop()
    end, {})
  end,
})

local presence_spec = use("andweeb/presence.nvim", {
  event = "VeryLazy",
  config = function()
    require("presence"):setup({})
  end,
})

local tetris_spec = use("alec-gibson/nvim-tetris", {
  cmd = "Tetris",
})

return {
  duck_spec,
  presence_spec,
  tetris_spec,
}

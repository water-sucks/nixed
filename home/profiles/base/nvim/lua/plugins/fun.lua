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

local neocord_spec = use("IogaMaster/neocord", {
  event = "VeryLazy",
  config = function()
    local neocord = require("neocord")

    vim.api.nvim_create_user_command("Neocord", function(command_opts)
      local operation = command_opts.args == "" and "start" or command_opts.args

      if operation == "start" then
        neocord:connect()
        vim.notify("started neocord", vim.log.levels.INFO)
      elseif operation == "stop" then
        neocord:stop()
        vim.notify("stopped neocord", vim.log.levels.INFO)
      else
        vim.notify("Invalid argument. Use `:Neocord`, `:Neocord start` or `:Neocord stop`", vim.log.levels.ERROR)
      end
    end, {
      nargs = "?",
      complete = function(_, _, _)
        return { "start", "stop" }
      end,
    })

    neocord.setup({
      global_timer = true,
    })
  end,
})

local tetris_spec = use("alec-gibson/nvim-tetris", {
  cmd = "Tetris",
})

local cell_automata_spec = use("Eandrju/cellular-automaton.nvim", {
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<Leader>q", group = "Fuck around/find out" },
      { "<Leader>qr", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "Make it rain" },
      { "<Leader>ql", "<cmd>CellularAutomaton game_of_life<CR>", desc = "Game of life" },
    })
  end,
})

return {
  duck_spec,
  neocord_spec,
  tetris_spec,
  cell_automata_spec,
}

local function init()
  global = global or {}
  global.launches = 0
end

script.on_init(function()
  init()
end)

local manuscripts = {
  { "lost-manuscript-1", 1 },
  { "lost-manuscript-1", 2 },
  { "lost-manuscript-1", 3 },
}

local launch_products = {
  "iron-plate",
  "fusion-reactor",
  "superluminal-thruster",
}

local function getLaunchResult(num)
  if num < 4 then
    return manuscripts[num]
  else
    return launch_products[math.random(#launch_products)]
  end
end

script.on_event(defines.events.on_rocket_launched, function(event)
  local status, err = pcall(function()
  	remote.call("silo_script","set_show_launched_without_satellite", false)
  	remote.call("silo_script","set_finish_on_launch", false)
  end)

  game.set_game_state({
    game_finished = false,
    player_won = false,
    can_continue = true
  })

  if event.rocket_silo.name == "superluminal-rocket-silo" then
    if event.rocket.get_item_count("superluminal-data-transfer-computer") then
      global.launches = global.launches + 1
      game.print(global.launches)
      event.rocket_silo.get_output_inventory().insert(getLaunchResult(global.launches))
    end
  end
end)

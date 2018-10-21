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
      event.rocket_silo.get_output_inventory().clear()
      event.rocket_silo.get_output_inventory().insert({
        name = "uranium-fuel-cell"
      })
    end
  end
end)

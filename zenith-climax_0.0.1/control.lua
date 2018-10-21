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
  game.print(serpent.block(event.rocket_silo.get_output_inventory().clear()))
end)

local function disable_no_satellite_launch_message()
  if remote.interfaces["silo-script"] then
    remote.call("silo-script", "set_show_launched_without_satellite", false)
  end
end

-- function on_rocket_launch(event)
--   if event.rocket_silo.name == "superluminal-rocket-silo" then
--
--
--   end
--
-- end

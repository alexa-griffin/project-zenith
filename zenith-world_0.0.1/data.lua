if not zen then zen = {} end
if not zen.world then zen.world = {} end
if not zen.lib then zen.lib = {} end

zen.world.debug = settings.startup["zen-debug"].value
zen.world.beta = settings.startup["zen-beta"].value


if zen.world.debug then
  require("test")
end

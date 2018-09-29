if not zen then zen = {} end
if not zen.world then zen.world = {} end
if not zen.settings then zen.settings = {} end
if not zen.lib then zen.lib = {} end

zen.settings.debug = settings.startup["zenith-debug"].value
zen.settings.beta = settings.startup["zenith-beta"].value

require("functions.lib")
require("functions.item")
require("functions.recipe")


if zen.settings.debug then
  require("test")
end

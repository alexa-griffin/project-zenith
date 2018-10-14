if not zen then zen = {} end
if not zen.world then zen.world = {} end
if not zen.settings then zen.settings = {} end
if not zen.lib then zen.lib = {} end

zen.settings.debug = settings.startup["zenith-debug"].value
zen.settings.beta = settings.startup["zenith-beta"].value
zen.settings.recolor_ore = settings.startup["zenith-recolor-ore"].value

require("functions.lib")
require("functions.item")
require("functions.recipe")
require("functions.tech")

require("prototypes.item")
require("prototypes.map-gen-presets")

require("test")

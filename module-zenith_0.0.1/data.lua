if not zen then zen = {} end
if not zen.module then zen.module = {} end
if not zen.settings then zen.settings = {} end

zen.settings.god_module = settings.startup["zenith-god-module"].value
zen.settings.pure_module = settings.startup["zenith-pure-module"].value
zen.settings.large_beacon = settings.startup["zenith-large-beacon"].value

require("prototypes.item-groups")
require("prototypes.module-function")
require("prototypes.categories")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

require("prototypes.speed-module")
require("prototypes.effectivity-module")
require("prototypes.productivity-module")
require("prototypes.pure-speed-module")
require("prototypes.pure-productivity-module")
require("prototypes.god-module")

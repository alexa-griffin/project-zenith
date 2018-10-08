if not zen then zen = {} end
if not zen.rarification then zen.rarification = {} end
if not zen.settings then zen.settings = {} end

data:extend({
  zen.lib.duplicateFromRaw("furnace", "stone-furnace", {
    name = "dummy-furnace",
    crafting_categories = { "centrifuging" }
  }),
  zen.lib.item.duplicateFromRaw("stone-furnace", {
    name = "dummy-furnace",
    place_result = "dummy-furnace",
  })
})

require("prototypes.fluid")
require("prototypes.item")
require("prototypes.smelting")
require("prototypes.floating")
require("prototypes.technology")
require("prototypes.waste-handling")

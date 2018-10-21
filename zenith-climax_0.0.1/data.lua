if not zen then zen = {} end
if not zen.climax then zen.climax = {} end
if not zen.settings then zen.settings = {} end

zen.settings.cost_multiplier = settings.startup["zenith-climax-cost"].value


local min = 5400 -- 7!
zen.climax.superluminalCost = {
  (min / 1) * zen.settings.cost_multiplier,
  (min / 2) * zen.settings.cost_multiplier,
  (min / 3) * zen.settings.cost_multiplier,
  (min / 4) * zen.settings.cost_multiplier,
  (min / 5) * zen.settings.cost_multiplier,
  (min / 6) * zen.settings.cost_multiplier,
  (min / 7) * zen.settings.cost_multiplier,
}

require("prototypes.entity")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.chunk")

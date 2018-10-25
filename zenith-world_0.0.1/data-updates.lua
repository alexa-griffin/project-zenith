require("prototypes.particles")
require("prototypes.resources")

zen.lib.recipe.replaceIngredient("concrete", "iron-ore", "ferric-ore")

-- recolor concrete
data.raw["tile"]["concrete"].map_color = { r = 80, g = 80, b = 80 }
data.raw["tile"]["refined-hazard-concrete-right"].map_color = { r = 0.7, g = 0.7, b = 0 }
data.raw["tile"]["refined-hazard-concrete-left"].map_color = { r = 0.7, g = 0.7, b = 0 }

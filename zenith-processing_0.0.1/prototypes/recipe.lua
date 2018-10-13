data:extend({
  zen.lib.recipe.duplicateFromRaw("electronic-circuit", {
    name = "quantum-computer",
    ingredients = {
      { "nuclear-polymer", 2 },
      { "electronic-circuit", 10 },
      { "advanced-circuit", 5 },
      { "processing-unit", 3 }
    },
    result = "quantum-computer",
  }),
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "tinned-cable",
    ingredients = {
      { "copper-cable", 2 },
      { "tin-plate", 1 },
    },
    result = "tinned-cable",
  }),
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "bronze-cable",
    ingredients = {
      { "copper-cable", 2 },
      { "tinned-cable", 2 },
      { "bronze-plate", 1 },
    },
    result = "bronze-cable",
    result_count = 4
  }),
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "gilded-cable",
    ingredients = {
      { "bronze-cable", 2 },
      { "gold-plate", 1 },
    },
    result = "gilded-cable",
  }),
  zen.lib.recipe.duplicateFromRaw("plastic-bar", {
    name = "bio-polymer",
    ingredients = {
      { "raw-cellulose", 2 },
      { "raw-polyethylene", 4 },
      { type = "fluid", name = "ethylene", amount = 20 },
    },
    result = "bio-polymer",
  }),
  zen.lib.recipe.duplicateFromRaw("plastic-bar", {
    name = "nuclear-polymer",
    ingredients = {
      { "thorium-230", 2 },
      { "raw-polyethylene", 4 },
      { type = "fluid", name = "ethylene", amount = 20 },
    },
    result = "nuclear-polymer",
  }),
})

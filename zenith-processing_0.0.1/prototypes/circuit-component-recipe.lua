data:extend({
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "quantum-computer",
    ingredients = {
      { "gilded-cable", 8 },
      { "nuclear-polymer", 2 },
      { "electronic-component", 10 },
      { "advanced-electronic-component", 5 },
      { "quantum-component", 2 },
    },
    result = "quantum-computer",
  }, true),
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "electronic-component",
    ingredients = {
      { "electronic-circuit", 1 },
      { "copper-plate", 2 },
    },
    result = "electronic-component",
    result_count = 8,
  }, true),
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "advanced-electronic-component",
    ingredients = {
      { "advanced-circuit", 2 },
      { "plastic-bar", 2 },
      { "electronic-component", 2 },
      { "bronze-plate", 2 },
    },
    result = "advanced-electronic-component",
    result_count = 6,
  }, true),
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "quantum-component",
    ingredients = {
      { "processing-unit", 2 },
      { "electronic-component", 2 },
      { "advanced-electronic-component", 2 },
      { "gold-plate", 2 },
    },
    result = "quantum-component",
    result_count = 4,
  }, true),
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "tinned-cable",
    ingredients = {
      { "copper-cable", 2 },
      { "tin-plate", 1 },
    },
    result = "tinned-cable",
  }, true),
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "bronze-cable",
    ingredients = {
      { "copper-cable", 2 },
      { "tinned-cable", 2 },
      { "bronze-plate", 1 },
    },
    result = "bronze-cable",
    result_count = 4
  }, true),
  zen.lib.recipe.duplicateFromRaw("copper-cable", {
    name = "gilded-cable",
    ingredients = {
      { "bronze-cable", 2 },
      { "gold-plate", 1 },
    },
    result = "gilded-cable",
  }, true),
  zen.lib.recipe.duplicateFromRaw("plastic-bar", {
    name = "bio-polymer",
    ingredients = {
      { "raw-cellulose", 2 },
      { "raw-polyethylene", 4 },
      { type = "fluid", name = "ethylene", amount = 20 },
    },
    result = "bio-polymer",
  }, true),
  zen.lib.recipe.duplicateFromRaw("plastic-bar", {
    name = "nuclear-polymer",
    ingredients = {
      { "thorium-230", 2 },
      { "pionium", 2 },
      { "raw-polyethylene", 4 },
      { type = "fluid", name = "ethylene", amount = 20 },
    },
    result = "nuclear-polymer",
  }, true),
})

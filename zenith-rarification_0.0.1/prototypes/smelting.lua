data:extend({
  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {{ "cupric-ore", 1 }},
    result = "copper-plate",
    result_count = 1,
  }, true),

  zen.lib.recipe.duplicateFromRaw("iron-plate", {
    ingredients = {{ "ferric-ore", 1 }},
    result = "iron-plate",
    result_count = 1,
  }, true),

  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {{ "tin-ore", 1 }},
    enabled = false,
    result = "tin-plate",
  }, true),

  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {{ "gold-ore", 1 }},
    enabled = false,
    result = "gold-plate",
  }, true),

  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {{ "scandium-ore", 1 }},
    enabled = false,
    result = "scandium-plate",
  }, true),

  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {
      { "tin-plate", 1 },
      { "copper-plate", 1 }
    },
    result = "bronze-plate",
    result_count = 2,
  }, true),
})

zen.lib.recipe.duplicateFromRaw("steel-plate", {
  ingredients = {
    { "coke", 2 },
    { "iron-plate", 5 }
  },
  result_count = 2,
})

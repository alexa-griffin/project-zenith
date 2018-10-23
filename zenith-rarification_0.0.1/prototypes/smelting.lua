data:extend({
  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    name = "tin-plate",
    ingredients = {{ "tin-ore", 1 }},
    energy_required = 1.5,
    enabled = false,
    result = "tin-plate",
  }, true),

  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    name = "gold-plate",
    ingredients = {{ "gold-ore", 1 }},
    energy_required = 6.5,
    enabled = false,
    result = "gold-plate",
  }, true),

  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    name = "scandium-plate",
    ingredients = {{ "scandium-ore", 1 }},
    energy_required = 8.5,
    enabled = false,
    result = "scandium-plate",
  }, true),

  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    name = "bronze-plate",
    ingredients = {
      { "tin-plate", 1 },
      { "copper-plate", 1 }
    },
    enabled = false,
    result = "bronze-plate",
    result_count = 2,
  }, true),
})

zen.lib.recipe.modifyRaw("steel-plate", {
  normal = {
    enabled = false,
    energy_required = 17.5,
    ingredients = {
      { "pig-iron", 5 },
    },
    result = "steel-plate",
    result_count = 2
  },
  expensive = {
    enabled = false,
    energy_required = 35,
    ingredients = {
      { "pig-iron", 10 },
    },
    result = "steel-plate",
  }
})

zen.lib.recipe.modifyRaw("copper-plate", {
  ingredients = {{ "cupric-ore", 1 }},
  result = "copper-plate",
  result_count = 1,
})

zen.lib.recipe.modifyRaw("iron-plate", {
  ingredients = {{ "ferric-ore", 1 }},
  result = "iron-plate",
  result_count = 1,
})

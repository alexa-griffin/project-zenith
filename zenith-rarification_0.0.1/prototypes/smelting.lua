data:extend({
  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {{ "cupric-ore", 4 }},
    result = "copper-plate",
    result_count = 3,
  }),
  zen.lib.recipe.duplicateFromRaw("iron-plate", {
    ingredients = {{ "ferric-ore", 4 }},
    result = "iron-plate",
    result_count = 3,
  }),
  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {{ "tin-ore", 1 }},
    result = "tin-plate",
  }),
  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {{ "gold-ore", 1 }},
    result = "gold-plate",
  }),
  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {{ "scandium-ore", 1 }},
    result = "scandium-plate",
  }),
  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {
      { "tin-plate", 1 },
      { "copper-plate", 1 }
    },
    result = "bronze-plate",
    result_count = 2,
  }),
  zen.lib.recipe.duplicateFromRaw("copper-plate", {
    ingredients = {
      { "coal", 2 }, -- TODO: make coke
      { "iron-plate", 5 }
    },
    enabled = false,
    energy_required = 17.5,
    result = "steel-plate",
    result_count = 2,
  }),
})

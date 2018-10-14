data:extend({
  zen.lib.recipe.duplicateFromRaw("sulfur", {
    name = "pionium",
    category = "centrifuging",
    ingredients = {
      { "uranium-ore", 5 },
      { "uranium-235", 1 }
    },
    results = {
      { type = "item", name = "pionium", amount = 1 }
    },
    result_count = 1,
    energy_required = 5,
  }),

  zen.lib.recipe.duplicateFromRaw("sulfur", {
    name = "uranium-carbide",
    category = "centrifuging",
    ingredients = {
      { "coke", 2 },
      { "uranium-238", 8 }
    },
    results = {
      { type = "item", name = "uranium-carbide", amount = 1 }
    },
    result_count = 1,
    energy_required = 2,
  }),

  zen.lib.recipe.duplicateFromRaw("sulfur", {
    name = "fusion-reactor",
    category = "centrifuging",
    ingredients = {
      { "uranium-235", 2 },
      { "thorium-230", 2 },
      { "steel-plate", 4 },
      { "advanced-circuit", 4 },
      { "plutonium-239", 2 }
    },
    results = {
      { type = "item", name = "fusion-reactor", amount = 1 }
    },
    result_count = 1,
    energy_required = 2,
  }),
})

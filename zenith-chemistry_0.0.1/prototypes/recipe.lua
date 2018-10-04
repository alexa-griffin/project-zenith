data:extend({
  zen.lib.recipe.duplicateFromRaw("stone-brick", {
    name = "coke",
    ingredients = {{ "coal", 2 }},
    energy_required = 1.5
  }),

  zen.lib.recipe.duplicateFromRaw("oil-processing", {
    name = "natural-gas-synthesis",
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 100 },
      { type = "fluid", name = "petroleum-gas", amount = 100 }
    },
    results = {
      { type = "fluid", name = "natural-gas", amount = 100 }
    },
    energy_required = 7.5
  }),

  zen.lib.recipe.duplicateFromRaw("oil-processing", {
    name = "natural-gas-processing",
    ingredients = {
      { type = "fluid", name = "natural-gas", amount = 30 },
      { type = "fluid", name = "petroleum-gas", amount = 30 }
    },
    results = {
      { type = "fluid", name = "benzene", amount = 10 }
      { type = "fluid", name = "propene", amount = 20 }
      { type = "fluid", name = "methane", amount = 30 }
    },
    energy_required = 12.5
  })
})

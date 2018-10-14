data:extend({
  zen.lib.recipe.duplicateFromRaw("electric-engine-unit", {
    name = "nuclear-engine-unit",
    ingredients =
    {
      { "pionium", 3 },
      { "plutonium-239", 3 },
      { "scandium-plate", 4 },
      { type = "fluid", name = "natural-lubricant", amount = 20 },
      { "advanced-circuit", 2 },
      { "electric-engine-unit", 2 }
    },
    result = "nuclear-engine-unit"
  })
})

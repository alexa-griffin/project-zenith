data:extend({
  zen.lib.recipe.duplicateFromRaw("explosives", {
    name = "cupric-ore-washing"
    ingredients = {
      { "cupric-ore", 4 },
      { type = "fluid", name = "water", amount = 100 },
    },
    energy_required = 4,
    enabled = false,
    normal = nil,
    expensive = nil,
    results = {
      { "tin-ore", 2 },
      { type = "fluid", name = "cupric-waste", amount = 20 },
    },
  }),
})

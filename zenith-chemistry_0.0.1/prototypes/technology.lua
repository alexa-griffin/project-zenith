data:extend({
  zen.lib.tech.duplicateFromRaw("oil-processing", {
    name = "natural-gas-processing"
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "natural-gas"
      },
      {
        type = "unlock-recipe",
        recipe = "natural-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "ethylbenzene"
      }
      {
        type = "unlock-recipe",
        recipe = "ammonia"
      }
      {
        type = "unlock-recipe",
        recipe = "cyanide"
      }
    },
    prerequisites = { "advanced-oil-processing" }
  })
})

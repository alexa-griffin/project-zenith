data:extend({
  zen.lib.tech.duplicateFromRaw("advanced-oil-processing", {
    name = "natural-gas-processing",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "natural-gas-synthesis"
      },
      {
        type = "unlock-recipe",
        recipe = "natural-gas-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "ethylbenzene"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-fuel-from-methane"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-fuel-from-benzene"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-fuel-from-propene"
      },
      {
        type = "unlock-recipe",
        recipe = "benzene-cracking"
      },
      {
        type = "unlock-recipe",
        recipe = "propene-cracking"
      }
    },
    prerequisites = { "advanced-oil-processing" }
  }),

  zen.lib.tech.duplicateFromRaw("advanced-oil-processing", {
    name = "ammonia-processing",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ammonia-synthesis"
      },
      {
        type = "unlock-recipe",
        recipe = "cyanide"
      },
      {
        type = "unlock-recipe",
        recipe = "hydrazine"
      }
    },
    icon = "__zenith-chemistry__/graphics/technology/basic-chemistry.png",
    prerequisites = { "natural-gas-processing" }
  }),
})

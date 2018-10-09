data:extend({
  zen.lib.tech.duplicateFromRaw("steel-processing", {
    name = "bio-processing-1",
    icon = "__zenith-bio__/graphics/technology/bio-processing.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "arboretum"
      },
      {
        type = "unlock-recipe",
        recipe = "wood-farming"
      },
      {
        type = "unlock-recipe",
        recipe = "sapling-creation"
      },
    }
  }),

  zen.lib.tech.duplicateFromRaw("advanced-material-processing", {
    name = "bio-processing-2",
    icon = "__zenith-bio__/graphics/technology/bio-processing.png",
    prerequisites = { "bio-processing-1" },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "alien-spore-extraction"
      },
    }
  })
})

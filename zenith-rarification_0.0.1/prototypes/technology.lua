data:extend({
  zen.lib.tech.duplicateFromRaw("steel-processing", {
    name = "tin-processing",
    icon = "__zenith-rarification__/graphics/technology/tin-processing.png",
    results =
    {
      {
        type = "unlock-recipe",
        recipe = "tin-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "bronze-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "cupric-ore-washing"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 10
    },
    prerequisites = { "steel-processing" }
  }),

  zen.lib.tech.duplicateFromRaw("steel-processing", {
    name = "gold-processing",
    icon = "__zenith-rarification__/graphics/technology/gold-processing.png",
    results =
    {
      {
        type = "unlock-recipe",
        recipe = "gold-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "cupric-ore-cyanidation"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 10
    },
    prerequisites = { "tin-processing", "advanced-material-processing-2", "ammonia-processing" }
  })
})

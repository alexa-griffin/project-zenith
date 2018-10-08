data:extend({
  zen.lib.tech.duplicateFromRaw("steel-processing", {
    name = "tin-processing",
    icon = "__zenith-rarification__/graphics/technology/tin-processing.png",
    effects =
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
      {
        type = "unlock-recipe",
        recipe = "cupric-waste-treatment"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant"
      },
    },
    unit =
    {
      count = 150,
      ingredients = {
        { "science-pack-1", 1 },
        { "science-pack-2", 1 }
      },
      time = 10
    },
    prerequisites = { "steel-processing", "advanced-material-processing" }
  }),

  zen.lib.tech.duplicateFromRaw("steel-processing", {
    name = "gold-processing",
    icon = "__zenith-rarification__/graphics/technology/gold-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gold-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "cupric-ore-cyanidation"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant"
      },
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
      },
      time = 10
    },
    prerequisites = { "tin-processing", "advanced-material-processing-2", "ammonia-processing" }
  }),

  zen.lib.tech.duplicateFromRaw("steel-processing", {
    name = "scandium-processing",
    icon = "__zenith-rarification__/graphics/technology/scandium-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "scandium-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "ferric-ore-washing"
      },
      {
        type = "unlock-recipe",
        recipe = "cupric-waste-treatment"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant"
      },
    },
    unit =
    {
      count = 400,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
      },
      time = 10
    },
    prerequisites = { "steel-processing", "advanced-material-processing-2", "sulfur-processing" }
  })
})

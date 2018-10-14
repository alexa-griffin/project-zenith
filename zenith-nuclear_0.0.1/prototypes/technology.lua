data:extend({
  zen.lib.tech.duplicateFromRaw("nuclear-power", {
    name = "nuclear-processing",
    icon = "__zenith-nuclear__/graphics/technology/nuclear-processing.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-carbide"
      },
    },
    prerequisites = { "electronics", "concrete" },
    unit = {
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30,
      count = 300
    },
  }),

  zen.lib.tech.duplicateFromRaw("nuclear-power", {
    name = "nuclear-processing-2",
    icon = "__zenith-nuclear__/graphics/technology/nuclear-processing.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "plutonium-controlled-decay"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-controlled-decay"
      },
      {
        type = "unlock-recipe",
        recipe = "thorium-controlled-decay"
      },
      {
        type = "unlock-recipe",
        recipe = "thorium-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "plutonium-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "pionium"
      },
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor"
      },
    },
    prerequisites = { "nuclear-processing" },
    unit = {
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30,
      count = 350
    },
  }),
})

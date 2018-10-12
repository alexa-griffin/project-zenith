data:extend({
  zen.lib.tech.duplicateFromRaw("nuclear-power", {
    name = "nuclear-processing-1",
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
    },
    prerequisites = { "electronics", "concrete" },
    unit = {
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30,
      count = 300
    },
  }),

  zen.lib.tech.duplicateFromRaw("nuclear-power", {
    name = "nuclear-processing-3",
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
    },
    prerequisites = { "electronics", "concrete" },
    unit = {
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30,
      count = 300
    },
  }),
})

data:extend({
  zen.lib.tech.duplicateFromRaw("advanced-electronics-2", {
    name = "advanced-electronics-3",
    icon = "__zenith-processing__/graphics/technology/advanced-electronics-3.png",
    prerequisites = {
      "gold-processing",
      "cyan-alien-processing",
      "green-alien-processing",
      "pink-alien-processing",
      "purple-alien-processing",
      "advanced-electronics-2" },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bio-component"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-computer"
      },
    },
    unit = {
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
      },
      time = 30,
      count = 350
    },
  }),
  zen.lib.tech.duplicateFromRaw("engine", {
    name = "nuclear-engine",
    prerequisites = {
      "electric-engine",
      "natural-gas-processing",
      "scandium-processing",
      "nuclear-processing-2"
     },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nuclear-engine-unit"
      },
    },
    unit = {
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
      },
      time = 30,
      count = 350
    },
  })
})

data:extend({
  zen.lib.tech.duplicateFromRaw("modules", {
    name = "modules-2",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "module-contact"
      },
      {
        type = "unlock-recipe",
        recipe = "module-processor-1"
      },
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
        {"science-pack-3", 1}
      },
      time = 15
    },
    prerequisites = { "modules", "advanced-electronics" }
  }),
  zen.lib.tech.duplicateFromRaw("modules", {
    name = "modules-3",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "advanced-module-contact"
      },
      {
        type = "unlock-recipe",
        recipe = "module-processor-2"
      },
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
        {"science-pack-3", 1}
        {"high-tech-science-pack", 1}
      },
      time = 15
    },
    prerequisites = { "modules-2", "advanced-electronics-2" }
  }),
  zen.lib.tech.duplicateFromRaw("modules", {
    name = "modules-4",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sophisticated-module-contact"
      },
      {
        type = "unlock-recipe",
        recipe = "module-processor-3"
      },
    },
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
        {"science-pack-3", 1}
        {"production-science-pack", 1}
        {"high-tech-science-pack", 1}
      },
      time = 15
    },
    prerequisites = { "modules-2", "advanced-electronics-2" }
  }),
})

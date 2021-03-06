data:extend({
  zen.lib.tech.duplicateFromRaw("rocket-silo", {
    name = "superluminal-travel",
    icon = "__zenith-climax__/graphics/technology/superluminal-travel.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "superluminal-data-transfer-computer"
      }
    },
    prerequisites = { "rocket-silo" },
    unit = {
      count = zen.climax.superluminalCost[1],
      ingredients = {
        { "science-pack-1", 1 },
      },
      time = 60
    },
  }),
  zen.lib.tech.duplicateFromRaw("rocket-silo", {
    name = "superluminal-travel-2",
    icon = "__zenith-climax__/graphics/technology/superluminal-travel.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "superluminal-structure"
      }
    },
    prerequisites = { "superluminal-travel" },
    unit = {
      count = zen.climax.superluminalCost[2],
      ingredients = {
        { "science-pack-1", 1 },
        { "science-pack-2", 1 },
      },
      time = 60
    },
  }),
  zen.lib.tech.duplicateFromRaw("rocket-silo", {
    name = "superluminal-travel-3",
    icon = "__zenith-climax__/graphics/technology/superluminal-travel.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "superluminal-power-supply"
      }
    },
    prerequisites = { "superluminal-travel-2" },
    unit = {
      count = zen.climax.superluminalCost[3],
      ingredients = {
        { "science-pack-1", 1 },
        { "science-pack-2", 1 },
        { "science-pack-3", 1 },
      },
      time = 60
    },
  }),
  zen.lib.tech.duplicateFromRaw("rocket-silo", {
    name = "superluminal-travel-4",
    icon = "__zenith-climax__/graphics/technology/superluminal-travel.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "superluminal-thruster"
      }
    },
    prerequisites = { "superluminal-travel-3" },
    unit = {
      count = zen.climax.superluminalCost[4],
      ingredients = {
        { "science-pack-1", 1 },
        { "science-pack-2", 1 },
        { "science-pack-3", 1 },
        { "production-science-pack", 1 },
      },
      time = 60
    },
  }),
  zen.lib.tech.duplicateFromRaw("rocket-silo", {
    name = "superluminal-travel-5",
    icon = "__zenith-climax__/graphics/technology/superluminal-travel.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "superluminal-brain"
      }
    },
    prerequisites = { "superluminal-travel-4" },
    unit = {
      count = zen.climax.superluminalCost[5],
      ingredients = {
        { "science-pack-1", 1 },
        { "science-pack-2", 1 },
        { "science-pack-3", 1 },
        { "production-science-pack", 1 },
        { "high-tech-science-pack", 1 },
      },
      time = 60
    },
  }),
  zen.lib.tech.duplicateFromRaw("rocket-silo", {
    name = "superluminal-travel-6",
    icon = "__zenith-climax__/graphics/technology/superluminal-travel.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "superluminal-tachyon-generator"
      }
    },
    prerequisites = { "superluminal-travel-5" },
    unit = {
      count = zen.climax.superluminalCost[6],
      ingredients = {
        { "science-pack-1", 1 },
        { "science-pack-2", 1 },
        { "science-pack-3", 1 },
        { "production-science-pack", 1 },
        { "high-tech-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 60
    },
  }),
  zen.lib.tech.duplicateFromRaw("rocket-silo", {
    name = "superluminal-travel-7",
    icon = "__zenith-climax__/graphics/technology/superluminal-travel.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "superluminal-drive"
      },
      {
        type = "unlock-recipe",
        recipe = "superluminal-rocket-silo"
      },
      {
        type = "unlock-recipe",
        recipe = "superluminal-rocket-part"
      },

    },
    prerequisites = { "superluminal-travel-6" },
    unit = {
      count = zen.climax.superluminalCost[7],
      ingredients = {
        { "science-pack-1", 1 },
        { "science-pack-2", 1 },
        { "science-pack-3", 1 },
        { "production-science-pack", 1 },
        { "high-tech-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 60
    },
  }),
  zen.lib.tech.duplicateFromRaw("rocket-silo", {
    name = "asteroid-mining",
    icon = "__zenith-climax__/graphics/technology/asteroid-mining.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "asteroid-extraction-unit"
      },
      {
        type = "unlock-recipe",
        recipe = "ferric-ore-from-asteroid-chunk"
      },
      {
        type = "unlock-recipe",
        recipe = "cupric-ore-from-asteroid-chunk"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-ore-from-asteroid-chunk"
      },
      {
        type = "unlock-recipe",
        recipe = "stone-from-asteroid-chunk"
      },
      {
        type = "unlock-recipe",
        recipe = "coal-from-asteroid-chunk"
      },
    },
    prerequisites = { "rocket-silo" },
    unit = {
      count = 1000,
      ingredients = {
        { "science-pack-1", 1 },
        { "science-pack-2", 1 },
        { "science-pack-3", 1 },
        { "production-science-pack", 1 },
        { "high-tech-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 60
    },
  }),
  zen.lib.tech.duplicateFromRaw("rocket-silo", {
    name = "planetary-extraction",
    icon = "__zenith-climax__/graphics/technology/asteroid-mining.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "planetary-extraction-unit"
      },
      {
        type = "unlock-recipe",
        recipe = "ferric-ore-from-planetary-chunk"
      },
      {
        type = "unlock-recipe",
        recipe = "cupric-ore-from-planetary-chunk"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-ore-from-planetary-chunk"
      },
      {
        type = "unlock-recipe",
        recipe = "stone-from-planetary-chunk"
      },
      {
        type = "unlock-recipe",
        recipe = "coal-from-planetary-chunk"
      },
    },
    prerequisites = { "asteroid-mining" },
    unit = {
      count = 5000,
      ingredients = {
        { "science-pack-1", 1 },
        { "science-pack-2", 1 },
        { "science-pack-3", 1 },
        { "production-science-pack", 1 },
        { "high-tech-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 60
    },
  }),
})

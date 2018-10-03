data:extend({
  zen.lib.recipe.duplicateFromRaw("explosives", {
    name = "ferric-ore-washing",
    ingredients = {
      { "ferric-ore", 4 },
      { type = "fluid", name = "sulfuric-acid", amount = 30 },
    },
    enabled = true,
    energy_required = 4,
    enabled = false,
    normal = nil,
    expensive = nil,
    main_result = "scandium-ore",
    results = {
      { "scandium-ore", 2 },
      { type = "fluid", name = "ferric-waste", amount = 20 },
    },
  }),

  zen.lib.recipe.duplicateFromRaw("explosives", {
    name = "cupric-ore-washing",
    ingredients = {
      { "cupric-ore", 4 },
      { type = "fluid", name = "water", amount = 100 },
    },
    enabled = true,
    energy_required = 4,
    enabled = false,
    normal = nil,
    expensive = nil,
    main_result = "tin-ore",
    results = {
      { "tin-ore", 2 },
      { type = "fluid", name = "cupric-waste", amount = 20 },
    },
  }),

  zen.lib.recipe.duplicateFromRaw("explosives", {
    name = "cupric-ore-cyanidation",
    ingredients = {
      { "cupric-ore", 4 },
      { type = "fluid", name = "water", amount = 40 },
    },
    enabled = true,
    energy_required = 4,
    enabled = false,
    normal = nil,
    expensive = nil,
    main_result = "gold-ore",
    results = {
      { "gold-ore", 2 },
      { type = "fluid", name = "cupric-waste", amount = 20 },
    },
  }),
})

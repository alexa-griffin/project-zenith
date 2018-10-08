data:extend({
  zen.lib.recipe.duplicateFromRaw("sulfuric-acid", {
    name = "ferric-ore-washing",
    ingredients = {
      { "ferric-ore", 4 },
      { type = "fluid", name = "sulfuric-acid", amount = 30 },
    },
    enabled = true,
    energy_required = 4,
    main_product = "scandium-ore",
    results = {
      { "scandium-ore", 2 },
      { type = "fluid", name = "ferric-waste", amount = 20 },
    },
  }),

  zen.lib.recipe.duplicateFromRaw("sulfuric-acid", {
    name = "cupric-ore-washing",
    ingredients = {
      { "cupric-ore", 4 },
      { type = "fluid", name = "water", amount = 100 },
    },
    enabled = true,
    energy_required = 4,
    main_product = "tin-ore",
    results = {
      { "tin-ore", 2 },
      { type = "fluid", name = "cupric-waste", amount = 20 },
    },
  }),

  zen.lib.recipe.duplicateFromRaw("sulfuric-acid", {
    name = "cupric-ore-cyanidation", -- TODO: make this require cyanide
    ingredients = {
      { "cupric-ore", 4 },
      { type = "fluid", name = "cyanide", amount = 40 },
    },
    enabled = true,
    energy_required = 4,
    main_product = "gold-ore",
    results = {
      { "gold-ore", 2 },
      { type = "fluid", name = "cupric-waste", amount = 20 },
    },
  }),
})

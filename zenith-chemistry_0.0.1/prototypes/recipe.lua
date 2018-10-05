data:extend({
  zen.lib.recipe.duplicateFromRaw("stone-brick", {
    name = "coke",
    ingredients = {{ "coal", 2 }},
    result = "coke",
    result_count = 2,
    energy_required = 1.5
  }, true),

  zen.lib.recipe.duplicateFromRaw("coal-liquefaction", {
    name = "natural-gas-synthesis",
    icon = "__zenith-chemistry__/graphics/icons/natural-gas-synthesis.png",
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 100 },
      { type = "item", name = "sulfur", amount = 5 },
      { type = "fluid", name = "petroleum-gas", amount = 100 }
    },
    results = {
      { type = "fluid", name = "natural-gas", amount = 100 }
    },
    energy_required = 7.5,
  }, true),

  zen.lib.recipe.duplicateFromRaw("coal-liquefaction", {
    name = "natural-gas-processing",
    icon = "__zenith-chemistry__/graphics/icons/natural-gas-processing.png",
    ingredients = {
      { type = "fluid", name = "natural-gas", amount = 30 },
      { type = "item", name = "coke", amount = 5 },
      { type = "fluid", name = "water", amount = 30 }
    },
    results = {
      { type = "fluid", name = "benzene", amount = 10 },
      { type = "fluid", name = "propene", amount = 20 },
      { type = "fluid", name = "methane", amount = 30 }
    },
    energy_required = 12.5
  }, true),

  zen.lib.recipe.duplicateFromRaw("sulfur", {
    name = "ethylbenzene",
    ingredients = {
      { type = "fluid", name = "benzene", amount = 20 },
      { type = "fluid", name = "ethylene", amount = 20 }
    },
    results = {
      { "ethylbenzene", 2 }
    },
    energy_required = 12.5
  }, true),

  zen.lib.recipe.duplicateFromRaw("sulfuric-acid", {
    name = "ammonia-synthesis",
    ingredients = {
      { type = "fluid", name = "methane", amount = 20 },
      { type = "fluid", name = "water", amount = 20 }
    },
    results = {
      { type = "fluid", name = "ammonia", amount = 20 },
    },
    energy_required = 2.5
  }, true),

  zen.lib.recipe.duplicateFromRaw("sulfuric-acid", {
    name = "cyanide",
    ingredients = {
      { type = "item", name = "coke", amount = 4 },
      { type = "fluid", name = "ammonia", amount = 30 }
    },
    results = {
      { type = "fluid", name = "cyanide", amount = 20 },
    },
    energy_required = 2.5
  }, true)
})

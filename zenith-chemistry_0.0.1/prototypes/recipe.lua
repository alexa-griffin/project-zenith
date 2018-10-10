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
      { type = "fluid", name = "natural-gas", amount = 200 }
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
      { type = "fluid", name = "propene", amount = 10 },
      { type = "fluid", name = "benzene", amount = 20 },
      { type = "fluid", name = "methane", amount = 30 }
    },
    energy_required = 12.5
  }, true),

  zen.lib.recipe.duplicateFromRaw("sulfuric-acid", {
    name = "ethylbenzene",
    ingredients = {
      { type = "fluid", name = "benzene", amount = 20 },
      { type = "fluid", name = "ethylene", amount = 20 }
    },
    results = {
      { type = "fluid", name = "ethylbenzene", amount = 20 }
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

  zen.lib.recipe.duplicateFromRaw("solid-fuel-from-heavy-oil", {
    name = "bio-fuel-from-benzene",
    icon = "__zenith-chemistry__/graphics/icons/bio-fuel-from-benzene.png",
    ingredients = {
      { type = "fluid", name = "benzene", amount = 5 },
      { type = "item", name = "bio-hydrogen", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-fuel", amount = 1 }
    },
  }, true),

  zen.lib.recipe.duplicateFromRaw("solid-fuel-from-heavy-oil", {
    name = "bio-fuel-from-methane",
    icon = "__zenith-chemistry__/graphics/icons/bio-fuel-from-methane.png",
    ingredients = {
      { type = "fluid", name = "methane", amount = 10 },
      { type = "item", name = "bio-hydrogen", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-fuel", amount = 1 }
    },
  }, true),

  zen.lib.recipe.duplicateFromRaw("solid-fuel-from-heavy-oil", {
    name = "bio-fuel-from-propene",
    icon = "__zenith-chemistry__/graphics/icons/bio-fuel-from-propene.png",
    ingredients = {
      { type = "fluid", name = "propene", amount = 10 },
      { type = "item", name = "bio-hydrogen", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-fuel", amount = 1 }
    },
  }, true),

  zen.lib.recipe.duplicateFromRaw("solid-fuel-from-heavy-oil", {
    name = "solid-fuel-from-ethylene",
    icon = "__zenith-chemistry__/graphics/icons/solid-fuel-from-ethylene.png",
    ingredients = {
      { type = "fluid", name = "ethylene", amount = 20 },
    },
    results = {
      { type = "item", name = "solid-fuel", amount = 1 }
    },
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
  }, true),

  zen.lib.recipe.duplicateFromRaw("plastic-bar", {
    name = "raw-polyethylene",
    ingredients = {
      { type = "fluid", name = "ethylene", amount = 20 },
      { type = "fluid", name = "water", amount = 20 },
      { type = "item", name = "ferric-ore", amount = 1 }
    },
    results = {
      { type = "item", name = "raw-polyethylene", amount = 5 },
    },
    energy_required = 2.5
  }, true),

  zen.lib.recipe.duplicateFromRaw("rocket-fuel", {
    name = "rocket-fuel-burner",
    category = "chemistry",
    ingredients = {
      { type = "item", name = "solid-fuel", amount = 30 },
      { type = "item", name = "sulfur", amount = 5 },
      { type = "fluid", name = "ammonia", amount = 30 },
    },
    results = {
      { type = "item", name = "rocket-fuel-burner", amount = 1 },
    },
    energy_required = 15
  }, true),

  zen.lib.recipe.duplicateFromRaw("rocket-fuel", {
    name = "rocket-fuel-igniter",
    category = "chemistry",
    ingredients = {
      { type = "fluid", name = "ethylbenzene", amount = 20 },
      { type = "fluid", name = "hydrazine", amount = 20 },
      { type = "item", name = "solid-fuel", amount = 30 },
    },
    results = {
      { type = "item", name = "rocket-fuel-igniter", amount = 1 },
    },
    energy_required = 15
  }, true),

  zen.lib.recipe.duplicateFromRaw("sulfuric-acid", {
    name = "hydrazine",
    ingredients = {
      { type = "fluid", name = "ammonia", amount = 20 },
      { type = "fluid", name = "sodium-hypochlorite", amount = 20 },
      { type = "item", name = "bio-fuel", amount = 2 }
    },
    results = {
      { type = "fluid", name = "hydrazine", amount = 20 }
    },
    energy_required = 12.5
  }, true),

  zen.lib.recipe.duplicateFromRaw("light-oil-cracking", {
    name = "ethylene-cracking",
    ingredients = {
      { type = "fluid", name = "ethylene", amount = 30 },
      { type = "fluid", name = "water", amount = 30 },
    },
    results = {
      { type = "fluid", name = "petroleum-gas", amount = 20 }
    },
  }, true),

  zen.lib.recipe.duplicateFromRaw("light-oil-cracking", {
    name = "benzene-cracking",
    icon = "__zenith-chemistry__/graphics/icons/benzene-cracking.png",
    ingredients = {
      { type = "fluid", name = "benzene", amount = 30 },
      { type = "fluid", name = "water", amount = 30 },
    },
    results = {
      { type = "fluid", name = "methane", amount = 20 }
    },
  }, true),

  zen.lib.recipe.duplicateFromRaw("light-oil-cracking", {
    name = "propene-cracking",
    icon = "__zenith-chemistry__/graphics/icons/propene-cracking.png",
    ingredients = {
      { type = "fluid", name = "propene", amount = 30 },
      { type = "fluid", name = "water", amount = 30 },
    },
    results = {
      { type = "fluid", name = "benzene", amount = 20 }
    },
  }, true),
})

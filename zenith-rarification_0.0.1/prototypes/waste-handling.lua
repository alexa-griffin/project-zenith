data:extend({
  zen.lib.recipe.duplicateFromRaw("sulfuric-acid", {
    name = "ferric-waste-treatment",
    icon = "__zenith-rarification__/graphics/icons/ferric-waste.png",
    icon_size = 32,
    ingredients = {
      { type = "fluid", name = "ferric-waste", amount = 100 },
      { type = "fluid", name = "water", amount = 100 }
    },
    results = {
      { "stone", 1 },
      { "ferric-ore", 1 }
    }
  }),
  zen.lib.recipe.duplicateFromRaw("sulfuric-acid", {
    name = "cupric-waste-treatment",
    icon = "__zenith-rarification__/graphics/icons/cupric-waste.png",
    icon_size = 32,
    ingredients = {
      { type = "fluid", name = "cupric-waste", amount = 100 },
      { type = "fluid", name = "water", amount = 100 }
    },
    results = {
      { "stone", 1 },
      { "cupric-ore", 1 }
    }
  }),
})

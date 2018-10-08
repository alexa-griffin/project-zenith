data:extend({
  zen.lib.recipe.duplicateFromRaw("wood", {
    name = "wood-farming",
    icon = "__zenith-bio__/graphics/icons/wood-farming.png",
    category = "arboretuming",
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 200 }
      { type = "item", name = "sapling", amount = 1 }
    },
    result = nil
    results = {
      {
        name = "raw-wood",
        probability = 1,
        min_amount = 8,
        max_amount = 20,
      },
      {
        name = "sapling",
        probability = 0.5,
        amount = 1
      }
    },
    energy_required = 10
  }, true),

  zen.lib.recipe.duplicateFromRaw("wood", {
    name = "sapling-creation",
    icon = "__zenith-bio__/graphics/icons/sapling-creation.png",
    category = "arboretuming",
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 200 }
      { type = "item", name = "raw-wood", amount = 1 }
    },
    result = "sapling"
    energy_required = 10
  }, true),
})

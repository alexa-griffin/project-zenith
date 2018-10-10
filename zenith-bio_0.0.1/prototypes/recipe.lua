data:extend({
  zen.lib.recipe.duplicateFromRaw("wood", {
    name = "wood-farming",
    icon = "__zenith-bio__/graphics/icons/wood-farming.png",
    icon_size = 32,
    category = "arboretuming",
    subgroup = "raw-material",
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 200 },
      { type = "item", name = "sapling", amount = 1 }
    },
    result = nil,
    results = {
      {
        name = "raw-wood",
        probability = 1,
        amount_min = 8,
        amount_max = 20,
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
    icon_size = 32,
    category = "arboretuming",
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 200 },
      { type = "item", name = "raw-wood", amount = 1 }
    },
    result = "sapling",
    energy_required = 10
  }, true),

  zen.lib.recipe.duplicateFromRaw("wood", {
    name = "alien-spore-extraction",
    icon = "__zenith-bio__/graphics/icons/alien-spore-extraction.png",
    icon_size = 32,
    category = "arboretuming",
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 300 },
      { type = "item", name = "raw-wood", amount = 100 },
      { type = "item", name = "ferric-ore", amount = 3}
    },
    subgroup = "raw-material",
    results = {
      {
        name = "red-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
      {
        name = "orange-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
      {
        name = "yellow-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
      {
        name = "green-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
      {
        name = "cyan-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
      {
        name = "blue-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
      {
        name = "purple-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
      {
        name = "pink-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
      {
        name = "white-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
      {
        name = "black-alien-spores",
        amount_min = 1,
        amount_max = 3,
        probability = 0.5,
      },
    },
    energy_required = 60
  }, true),


})

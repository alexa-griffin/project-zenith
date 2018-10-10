function crystal(color, synAdditive, comAdditive, rResult, gResult, bResult)
  data:extend({
    zen.lib.item.duplicateFromRaw("uranium-ore", {
      name = rResult,
      icon = "__zenith-chemistry/graphics/icons/" .. rResult .. ".png"
    }),
    zen.lib.item.duplicateFromRaw("uranium-ore", {
      name = gResult,
      icon = "__zenith-chemistry/graphics/icons/" .. gResult .. ".png"
    }),
    zen.lib.item.duplicateFromRaw("uranium-ore", {
      name = bResult,
      icon = "__zenith-chemistry/graphics/icons/" .. bResult .. ".png"
    }),
    zen.lib.recipe.duplicateFromRaw("wood", {
      name = color .. "-crystal-synthesis",
      category = "chemistry",
      enabled = false,
      ingredients = {
        { type = "item", name = color .. "-czochralski-starter", amount = 5 },
        { type = "fluid", name = synAdditive, amount = 10 },
      },
      result = color .. "-czochralski-crystal",
      result_amount = 2,
      energy_required = 20
    }),
    zen.lib.recipe.duplicateFromRaw("wood", {
      name = rResult,
      category = "chemistry",
      enabled = false,
      ingredients = {
        { type = "item", name = color .. "-czochralski-crystal", amount = 2 },
        { type = "item", name = "red-czochralski-crystal", amount = 2 },
        { type = "fluid", name = comAdditive, amount = 10 },
      },
      result = rResult,
      result_amount = 1,
      energy_required = 10
    }),
    zen.lib.recipe.duplicateFromRaw("wood", {
      name = gResult,
      category = "chemistry",
      enabled = false,
      ingredients = {
        { type = "item", name = color .. "-czochralski-crystal", amount = 2 },
        { type = "item", name = "green-czochralski-crystal", amount = 2 },
        { type = "fluid", name = comAdditive, amount = 10 },
      },
      result = gResult,
      result_amount = 1,
      energy_required = 10
    }),
    zen.lib.recipe.duplicateFromRaw("wood", {
      name = bResult,
      category = "chemistry",
      enabled = false,
      ingredients = {
        { type = "item", name = color .. "-czochralski-crystal", amount = 2 },
        { type = "item", name = "blue-czochralski-crystal", amount = 2 },
        { type = "fluid", name = comAdditive, amount = 10 },
      },
      result = bResult,
      result_amount = 1,
      energy_required = 10
    }),

    zen.lib.tech.duplicateFromRaw("wood", {
      name = color .. "-crystal-processing",
      effects = {
        {
          type = "unlock-recipe",
          recipe = color .. "-crystal-synthesis",
        },
        {
          type = "unlock-recipe",
          recipe = rResult
        },
        {
          type = "unlock-recipe",
          recipe = gResult
        },
        {
          type = "unlock-recipe",
          recipe = bResult
        },
      }
    }),
  })
end

crystal("red",   "water", "sulfuric-acid",  "rose-quartz",  "prasiolite",  "ametrine")
crystal("green", "water", "ethylbenzene",   "agate",        "aventurine",  "onyx")
crystal("blue",  "water", "propene",        "smoky-quartz", "moss-agate",  "citrine")

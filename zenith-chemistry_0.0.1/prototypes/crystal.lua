function crystal(color, synAdditive, comAdditive, rResult, gResult, bResult, prereqs)
  data:extend({
    zen.lib.item.duplicateFromRaw("uranium-ore", {
      name = rResult,
      icon = "__zenith-chemistry__/graphics/icons/" .. rResult .. ".png"
    }),
    zen.lib.item.duplicateFromRaw("uranium-ore", {
      name = gResult,
      icon = "__zenith-chemistry__/graphics/icons/" .. gResult .. ".png"
    }),
    zen.lib.item.duplicateFromRaw("uranium-ore", {
      name = bResult,
      icon = "__zenith-chemistry__/graphics/icons/" .. bResult .. ".png"
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

    zen.lib.item.duplicateFromRaw("uranium-ore", {
      name = color .. "-czochralski-crystal",
      icon = "__zenith-chemistry__/graphics/icons/" .. color .. "-czochralski-crystal.png"
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


    zen.lib.tech.duplicateFromRaw("advanced-material-processing", {
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
      },
      prerequisites = prereqs
    }),
  })
end

crystal("red",   "water", "sulfuric-acid", "rose-quartz",  "prasiolite",  "ametrine",
{ "red-alien-processing",   "natural-gas-processing" })
crystal("green", "water", "ethylbenzene",  "agate",        "aventurine",  "onyx",
{ "green-alien-processing", "natural-gas-processing" })
crystal("blue",  "water", "propene",       "smoky-quartz", "moss-agate",  "citrine",
{ "blue-alien-processing",  "natural-gas-processing" })

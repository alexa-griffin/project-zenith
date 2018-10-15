-- module contacts
data:extend({
  zen.lib.item.duplicateFromRaw("processing-unit", {
    name = "basic-module-contact",
    icon = "__module-zenith__/graphics/icons/basic-module-contact.png",
    category = "module",
    order = "a-a"
  }),
  zen.lib.item.duplicateFromRaw("processing-unit", {
    name = "module-contact",
    icon = "__module-zenith__/graphics/icons/module-contact.png",
    category = "module",
    order = "a-b"
  }),
  zen.lib.item.duplicateFromRaw("processing-unit", {
    name = "advanced-module-contact",
    icon = "__module-zenith__/graphics/icons/advanced-module-contact.png",
    category = "module",
    order = "a-c"
  }),
  zen.lib.item.duplicateFromRaw("processing-unit", {
    name = "sophisticated-module-contact",
    icon = "__module-zenith__/graphics/icons/sophisticated-module-contact.png",
    category = "module",
    order = "a-d"
  }),
  zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
    name = "basic-module-contact",
    result = "basic-module-contact",
    result_count = 2,
    ingredients = {
      { "wood", 2 },
      { "copper-plate", 2 }
    },
    energy_required = 1,
  }),
  zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
    name = "module-contact",
    result = "module-contact",
    result_count = 2,
    ingredients = {
      { "plastic-bar", 2 },
      { "tin-plate", 2 }
    },
    energy_required = 1,
  }),
  zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
    name = "advanced-module-contact",
    result = "advanced-module-contact",
    result_count = 2,
    ingredients = {
      { "nuclear-polymer", 2 },
      { "bronze-plate", 2 }
    },
    energy_required = 1,
  }),
  zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
    name = "sophisticated-module-contact",
    result = "sophisticated-module-contact",
    result_count = 2,
    ingredients = {
      { "bio-polymer", 2 },
      { "gold-plate", 2 }
    },
    energy_required = 1,
  }),
})

-- module processors
data:extend({
  zen.lib.item.duplicateFromRaw("processing-unit", {
    name = "module-processor-0",
    icon = "__module-zenith__/graphics/icons/module-processor-0.png",
    category = "module",
    order = "b-a"
  }),
  zen.lib.item.duplicateFromRaw("processing-unit", {
    name = "module-processor-1",
    icon = "__module-zenith__/graphics/icons/module-processor-1.png",
    category = "module",
    order = "b-b"
  }),
  zen.lib.item.duplicateFromRaw("processing-unit", {
    name = "module-processor-2",
    icon = "__module-zenith__/graphics/icons/module-processor-2.png",
    category = "module",
    order = "b-c"
  }),
  zen.lib.item.duplicateFromRaw("processing-unit", {
    name = "module-processor-3",
    icon = "__module-zenith__/graphics/icons/module-processor-3.png",
    category = "module",
    order = "b-d"
  }),
  zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
    name = "module-processor-0",
    result = "module-processor-0",
    ingredients = {
      { "electronic-circuit", 4 },
    },
    energy_required = 4,
  }),
  zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
    name = "module-processor-1",
    result = "module-processor-1",
    ingredients = {
      { "advanced-circuit", 2 },
      { "electronic-component", 2 },
      { "module-processor-0", 2 }
    },
    energy_required = 8,
  }),
  zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
    name = "module-processor-2",
    result = "module-processor-2",
    ingredients = {
      { "processing-unit", 2 },
      { "advanced-electronic-component", 2 },
      { "module-processor-1", 2 }
    },
    energy_required = 12,
  }),
  zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
    name = "module-processor-3",
    result = "module-processor-3",
    ingredients = {
      { "bio-computer", 2 },
      { "bio-component", 2 },
      { "module-processor-2", 2 }
    },
    energy_required = 16,
  }),
})

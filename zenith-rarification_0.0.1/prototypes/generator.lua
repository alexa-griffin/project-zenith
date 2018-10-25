function generateOreItems(settings)
  data:extend({
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = "raw-" .. settings.name .. "-ore",
      icon = "__zenith-rarification__/graphics/icons/raw-" .. settings.name .. "-ore.png",
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-dust",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-dust.png",
    }),
    zen.lib.duplicateFromRaw("fluid", "water", {
      name = settings.name .. "-slurry",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-slurry.png",
      base_color = zen.lib.hexToColor(settings.slurry.base_color),
      flow_color = zen.lib.hexToColor(settings.slurry.flow_color),
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-nugget",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-nugget.png",
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-crystals",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-crystals.png",
    }),
    zen.lib.duplicateFromRaw("fluid", "water", {
      name = settings.name .. "-essence",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-essence.png",
      base_color = zen.lib.hexToColor(settings.essence.base_color),
      flow_color = zen.lib.hexToColor(settings.essence.flow_color),
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = "pure-" .. settings.name,
      icon = "__zenith-rarification__/graphics/icons/pure-" .. settings.name .. ".png",
    }),
  })
end

function generateOreRecipe(settings)
  data:extend({
    zen.lib.recipe.duplicateFromRaw("iron-ore", {
      name = "raw-" .. settings.name .. "-ore",
      category = "ore-processing",
      ingredients = settings.initial_ingredients,
      result = "raw-" .. settings.name .. "-ore",
      result_count = settings.initial_result_count
    }),
    zen.lib.recipe.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-dust",
      category = "ore-processing",
      ingredients = {
        { "raw-" .. settings.name .. "-ore", 1 }
      },
      result = settings.name .. "-dust",
      result_count = 3
    }),
    zen.lib.recipe.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-slurry",
      category = "ore-processing",
      ingredients = {
        { settings.name .. "-dust", 2 },
        { type = "fluid", name = "water", amount = 10 },
      },
      results = {
        { type = "fluid, "name = settings.name .. "-slurry", amount = 10 },
      }
    }),
    zen.lib.recipe.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-nugget",
      category = "ore-processing",
      ingredients = {
        { type = "fluid", name = settings.name .. "-slurry", amount = 10 },
      },
      main_product = settings.name .. "-nugget",
      results = {
        settings.name .. "-nugget",
        { type = "fluid", name = settings.wastewater, amount = 10 },
      }
    }),
    zen.lib.recipe.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-crystals",
      category = "ore-processing",
      ingredients = {
        { settings.name .. "-nugget", 1 },
        { settings.name .. "-dust", 1 },
        { type = "fluid", name = settings.extractor_additive, amount = 10 },
      },
      main_product = settings.name .. "-crystals",
      results = {
        { settings.name .. "-crystals", 10 },
        { type = "fluid", name = settings.wastewater, amount = 10 },
      }
    }),
    zen.lib.recipe.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-essence",
      category = "ore-processing",
      ingredients = {
        { settings.name .. "-crystals", 1 },
        { settings.essence_additive, 2 },
        { type = "fluid", name = settings.extractor_additive, amount = 10 },
      },
      main_product = settings.name .. "-essence",
      results = {
        settings.name .. "-essence",
        { type = "fluid", name = settings.wastewater, amount = 10 },
      }
    }),
  })
end

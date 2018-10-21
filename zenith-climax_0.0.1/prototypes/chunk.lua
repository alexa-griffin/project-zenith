function chunk(name, result_count, additive_count)
  data:extend({
    zen.lib.recipe.duplicateFromRaw("plastic-bar", {
      name = "cupric-ore-from-" .. name .. "-chunk",
      energy_required = 60,
      ingredients = {
        { name .. "-chunk", 1 },
      },
      results = {
        { type = "fluid", name = "cupric-ore", amount = result_count },
      }
    }, true),
    zen.lib.recipe.duplicateFromRaw("plastic-bar", {
      name = "ferric-ore-from-" .. name .. "-chunk",
      energy_required = 60,
      ingredients = {
        { name .. "-chunk", 1 },
      },
      results = {
        { type = "fluid", name = "ferric-ore", amount = result_count },
      }
    }, true),
    zen.lib.recipe.duplicateFromRaw("plastic-bar", {
      name = "coal-from-" .. name .. "-chunk",
      energy_required = 60,
      ingredients = {
        { name .. "-chunk", 1 },
      },
      results = {
        { type = "fluid", name = "coal", amount = result_count },
      }
    }, true),
    zen.lib.recipe.duplicateFromRaw("plastic-bar", {
      name = "stone-from-" .. name .. "-chunk",
      energy_required = 60,
      ingredients = {
        { name .. "-chunk", 1 },
      },
      results = {
        { type = "fluid", name = "stone", amount = result_count },
      }
    }, true),
    zen.lib.recipe.duplicateFromRaw("plastic-bar", {
      name = "uranium-ore-from-" .. name .. "-chunk",
      energy_required = 60,
      ingredients = {
        { name .. "-chunk", 1 },
        { type = "fluid", name = "sulfuric-acid", amount = additive_count },
      },
      results = {
        { type = "fluid", name = "uranium-ore", amount = result_count },
      }
    }, true),
  })
end


chunk("asteroid", 1000, 500)
chunk("planetary", 10000, 1000)

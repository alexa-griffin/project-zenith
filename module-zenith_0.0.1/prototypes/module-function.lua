local alpha = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p"}

function zen.module.generateModule(name, duplicateTarget, effects, recipe, processingRecipe, description, order, techDuplicateTarget)
  for  i = 0, 7 do
    data:extend({
      zen.lib.duplicateFromRaw("module", duplicateTarget, {
        name = name .. "-module-" .. i,
        icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-" .. i .. ".png",
        order = "b-" .. alpha[i + 1],
        subgroup = name .. "-modules",
        effect =  effects[i + 1],
        localised_description = description,
        tier = i,
        category = name,
      }),

      zen.lib.item.duplicateFromRaw("electronic-circuit", {
        name = name .. "-module-" .. i .. "-harness",
        icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-" .. i .. "-harness.png",
        order = "a-" .. alpha[i + 1],
        subgroup = name .. "-module-harnesses"
      }),

      zen.lib.recipe.duplicateFromRaw(duplicateTarget, {
        name = name .. "-module-" .. i .. "-harness",
        ingredients = recipe[i + 1].harness.ingredients,
        energy_required = recipe[i + 1].harness.energy_required,
        category = recipe[i + 1].harness.category or "crafting",
        results = {
          { name .. "-module-" .. i .. "-harness", 1 }
        }
      }),

      zen.lib.recipe.duplicateFromRaw(duplicateTarget, {
        name = name .. "-module-" .. i,
        ingredients = recipe[i + 1].module.ingredients,
        energy_required = recipe[i + 1].module.energy_required,
        category = recipe[i + 1].module.category or "crafting",
        main_product = name .. "-module-" .. i,
        results = recipe.results or (i ~= 0 and {
          { name .. "-module-" .. i, 1 },
          { name .. "-module-" .. i - 1 .. "-harness", 1 },
        } or {{ name .. "-module-" .. i, 1 }})
      }),
    })

    if i ~= 0 then
      data:extend({
        zen.lib.tech.duplicateFromRaw(techDuplicateTarget, {
          name = name .. "-module-" .. i + 1,
          effects = {
            {
              type = "unlock-recipe",
              recipe = name .. "-module-" .. i
            },
            {
              type = "unlock-recipe",
              recipe = name .. "-module-" .. i .. "-harness"
            },
          },
          prerequisites = { "modules" .. (math.floor(i / 2) ~= 0 and "-" .. math.floor(i / 2) + 1 or ""),
                            name .. "-module" .. ((i == 0 or i == 1) and "" or "-" .. i)}
        }),
      })
    end
  end

  for  i = 0, 3 do
    data:extend({
      zen.lib.item.duplicateFromRaw("electronic-circuit", {
        name = name .. "-module-processor-" .. i,
        icon = "__module-zenith__/graphics/icons/" .. name .. "-module-processor-" .. i .. ".png",
        order = order .. "-" .. alpha[i + 1],
        subgroup = "module"
      }),
      zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
        name = name .. "-module-processor-" .. i,
        ingredients = processingRecipe[i + 1].ingredients,
        energy_required = processingRecipe[i + 1].energy_required,
        result = name .. "-module-processor-" .. i,
      }),
    })
  end
end

function zen.module.generateCombinedModule(name, ing1, ing2, duplicateTarget, effects, recipe, description, order, techDuplicateTarget, icon)
  for i = 0, 7 do
    data:extend({
      zen.lib.duplicateFromRaw("module", duplicateTarget, {
        name = name .. "-module-" .. i,
        icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-" .. i .. ".png",
        order = "b-" .. alpha[i + 1],
        subgroup = name .. "-modules",
        effect =  effects[i + 1],
        localised_description = description,
        tier = i,
        category = name,
      }),

      zen.lib.item.duplicateFromRaw("electronic-circuit", {
        name = name .. "-module-" .. i .. "-harness",
        icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-" .. i .. "-harness.png",
        order = "a-" .. alpha[i + 1],
        subgroup = name .. "-module-harnesses"
      }),

      zen.lib.recipe.duplicateFromRaw(duplicateTarget, {
        name = name .. "-module-" .. i .. "-harness",
        ingredients = recipe[i + 1].harness.ingredients,
        energy_required = recipe[i + 1].harness.energy_required,
        category = recipe[i + 1].harness.category or "crafting",
        results = {
          { name .. "-module-" .. i .. "-harness", 1 }
        }
      }),

      zen.lib.recipe.duplicateFromRaw(duplicateTarget, {
        name = name .. "-module-" .. i,
        ingredients = recipe[i + 1].module.ingredients,
        energy_required = recipe[i + 1].module.energy_required,
        category = recipe[i + 1].module.category or "crafting",
        main_product = name .. "-module-" .. i,
        results = recipe.results or (i ~= 0 and {
          { name .. "-module-" .. i, 1 },
          { name .. "-module-" .. i - 1 .. "-harness", 1 },
          { ing1 .. "-module-" .. i .. "-harness", 1 },
          { ing2 .. "-module-" .. i .. "-harness", 1 },
        } or {{ name .. "-module-" .. i, 1 }})
      }),
    })
    data:extend({
      zen.lib.tech.duplicateFromRaw(techDuplicateTarget, {
        name = i ~= 0 and name .. "-module-" .. i or (name .. "-module"),
        icon = icon or data.raw["technology"][techDuplicateTarget].icon,
        effects = {
          {
            type = "unlock-recipe",
            recipe = name .. "-module-" .. i
          },
          {
            type = "unlock-recipe",
            recipe = name .. "-module-" .. i .. "-harness"
          },
        },
        prerequisites = { (i == 0 and "modules") or (i == 1 and name .. "-module") or name .. "-module-" .. i - 1,
                          ing1 .. "-module" .. ((i == 0 or i == 1) and "" or ("-" .. i)),
                          ing2 .. "-module" .. ((i == 0 or i == 1) and "" or ("-" .. i)), }
      }),
    })

  end
end

function generateModuleRecipe(tier, name, ing1, ing2, module)
  return not module and {
    { name .. "-module-" .. tier .. "-harness", 1 },
    { ing1 .. "-module-processor-" .. math.floor(tier / 4), 1 },
    { ing2 .. "-module-processor-" .. math.floor(tier / 4), 1 },
    { ing1 .. "-module-" .. tier, 1 },
    { ing2 .. "-module-" .. tier, 1 },
    { name .. "-module-" .. tier, 1 },
  } or {
    { name .. "-module-" .. tier .. "-harness", 1 },
    { ing1 .. "-module-" .. tier, 1 },
    { ing2 .. "-module-" .. tier, 1 },
    { name .. "-module-" .. tier, 1 },
  }
end

function zen.module.generateCombinedModuleRecipe (name, ing1, ing2, module)
  return {
    { -- 0
      harness = {
        ingredients = {
          { ing1 .. "-module-0-harness", 1 },
          { ing2 .. "-module-0-harness", 1 },
          { "electronic-circuit", 2 },
        },
        energy_required = 10
      },
      module = {
        ingredients = generateModuleRecipe(0, name, ing1, ing2, module),
        energy_required = 10
      },
    },
    { -- 1
      harness = {
        ingredients = {
          { name .. "-module-0-harness", 1 },
          { ing1 .. "-module-1-harness", 1 },
          { ing2 .. "-module-1-harness", 1 },
        },
        energy_required = 5
      },
      module = {
        ingredients = generateModuleRecipe(1, name, ing1, ing2, module),
        energy_required = 15
      },
    },
    { -- 2
      harness = {
        ingredients = {
          { name .. "-module-1-harness", 1 },
          { ing1 .. "-module-2-harness", 1 },
          { ing2 .. "-module-2-harness", 1 },
        },
        energy_required = 10
      },
      module = {
        ingredients = generateModuleRecipe(2, name, ing1, ing2, module),
        energy_required = 15
      },
    },
    { -- 3
      harness = {
        ingredients = {
          { name .. "-module-2-harness", 1 },
          { ing1 .. "-module-3-harness", 1 },
          { ing2 .. "-module-3-harness", 1 },
        },
        energy_required = 10
      },
      module = {
        ingredients = generateModuleRecipe(3, name, ing1, ing2, module),
        energy_required = 30
      },
    },
    { -- 4
      harness = {
        ingredients = {
          { name .. "-module-3-harness", 1 },
          { ing1 .. "-module-4-harness", 1 },
          { ing2 .. "-module-4-harness", 1 },
        },
        energy_required = 20
      },
      module = {
        ingredients = generateModuleRecipe(4, name, ing1, ing2, module),
        energy_required = 60
      },
    },
    { -- 5
      harness = {
        ingredients = {
          { name .. "-module-4-harness", 1 },
          { ing1 .. "-module-5-harness", 1 },
          { ing2 .. "-module-5-harness", 1 },
        },
        energy_required = 20
      },
      module = {
        ingredients = generateModuleRecipe(5, name, ing1, ing2, module),
        energy_required = 60
      },
    },
    { -- 6
      harness = {
        ingredients = {
          { name .. "-module-5-harness", 1 },
          { ing1 .. "-module-6-harness", 1 },
          { ing2 .. "-module-6-harness", 1 },
        },
        energy_required = 30
      },
      module = {
        ingredients = generateModuleRecipe(6, name, ing1, ing2, module),
        energy_required = 120
      },
    },
    { -- 7
      harness = {
        ingredients = {
          { name .. "-module-6-harness", 1 },
          { ing1 .. "-module-7-harness", 1 },
          { ing2 .. "-module-7-harness", 1 },
        },
        energy_required = 30
      },
      module = {
        ingredients = generateModuleRecipe(7, name, ing1, ing2, module),
        energy_required = 240
      },
    },
  }
end

function zen.module.generateGenericModuleRecipe(name)
  return {
    { -- 0
      harness = {
        ingredients = {
          { "copper-cable", 3 },
          { "electronic-circuit", 2 },
        },
        energy_required = 5
      },
      module = {
        ingredients = {
          { name .. "-module-0-harness", 1 },
          { name .. "-module-processor-0", 1 },
          { "basic-module-contact", 1 },
        },
        energy_required = 10
      },
    },
    { -- 1
      harness = {
        ingredients = {
          { "copper-cable", 3 },
          { "electronic-component", 2 },
          { name .. "-module-0-harness", 1 },
        },
        energy_required = 5
      },
      module = {
        ingredients = {
          { name .. "-module-1-harness", 1 },
          { name .. "-module-0", 1 },
          { name .. "-module-processor-0", 2 },
          { "basic-module-contact", 2 },
        },
        energy_required = 15
      },
    },
    { -- 2
      harness = {
        ingredients = {
          { "tinned-cable", 3 },
          { "advanced-circuit", 4 },
          { name .. "-module-1-harness", 1 },
        },
        energy_required = 10
      },
      module = {
        ingredients = {
          { name .. "-module-2-harness", 1 },
          { name .. "-module-1", 1 },
          { name .. "-module-processor-1", 3 },
          { "module-contact", 3 },
        },
        energy_required = 15
      },
    },
    { -- 3
      harness = {
        ingredients = {
          { "tinned-cable", 3 },
          { "advanced-electronic-component", 4 },
          { name .. "-module-2-harness", 1 },
        },
        energy_required = 10
      },
      module = {
        ingredients = {
          { name .. "-module-3-harness", 1 },
          { name .. "-module-2", 1 },
          { name .. "-module-processor-1", 4 },
          { "module-contact", 4 },
        },
        energy_required = 30
      },
    },
    { -- 4
      harness = {
        ingredients = {
          { "bronze-cable", 3 },
          { "processing-unit", 6 },
          { name .. "-module-3-harness", 1 },
        },
        energy_required = 20
      },
      module = {
        ingredients = {
          { name .. "-module-4-harness", 1 },
          { name .. "-module-3", 1 },
          { name .. "-module-processor-2", 6 },
          { "advanced-module-contact", 6 },
        },
        energy_required = 60
      },
    },
    { -- 5
      harness = {
        ingredients = {
          { "bronze-cable", 3 },
          { "bio-component", 6 },
          { name .. "-module-4-harness", 1 },
        },
        energy_required = 20
      },
      module = {
        ingredients = {
          { name .. "-module-5-harness", 1 },
          { name .. "-module-4", 1 },
          { name .. "-module-processor-2", 6 },
          { "advanced-module-contact", 6 },
        },
        energy_required = 60
      },
    },
    { -- 6
      harness = {
        ingredients = {
          { "gilded-cable", 3 },
          { "bio-computer", 6 },
          { name .. "-module-5-harness", 1 },
        },
        energy_required = 30
      },
      module = {
        ingredients = {
          { name .. "-module-6-harness", 1 },
          { name .. "-module-5", 1 },
          { name .. "-module-processor-3", 12 },
          { "sophisticated-module-contact", 12 },
        },
        energy_required = 120
      },
    },
    { -- 7
      harness = {
        ingredients = {
          { "gilded-cable", 3 },
          { "copper-cable", 3 },
          { "bronze-cable", 3 },
          { "tinned-cable", 3 },
          { "electronic-circuit", 32 },
          { "advanced-circuit", 16 },
          { "processing-unit", 8 },
          { "bio-computer", 4 },
          { name .. "-module-6-harness", 1 },
        },
        energy_required = 30
      },
      module = {
        ingredients = {
          { name .. "-module-7-harness", 1 },
          { name .. "-module-6", 1 },
          { name .. "-module-processor-3", 24 },
          { "sophisticated-module-contact", 24 },
        },
        energy_required = 240
      },
    },
  }
end

function zen.module.generateGenericModuleProcessorRecipe(name, additives)
  return {
    { -- 0
      ingredients = zen.lib.spread({
        { "electronic-circuit", 1 },
        { "module-processor-0", 1 }
      }, additives[1]),
      energy_required = 5
    },
    { -- 1
      ingredients = zen.lib.spread({
        { "advanced-circuit", 1 },
        { "module-processor-1", 1 }
      }, additives[2]),
      energy_required = 5
    },
    { -- 2
      ingredients = zen.lib.spread({
        { "processing-unit", 1 },
        { "module-processor-2", 1 }
      }, additives[3]),
      energy_required = 10
    },
    { -- 3
      ingredients = zen.lib.spread({
        { "bio-computer", 1 },
        { "module-processor-3", 1 }
      }, additives[4]),
      energy_required = 10
    },
  }
end

function zen.bio.alien(color, order, poison, result)
  data:extend({
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = color .. "-alien-spores",
      order = "w-" .. order,
      fuel_value = "75MJ",
      fuel_category = "chemical",
      icon = "__zenith-bio__/graphics/icons/" .. color .. "-alien-spores.png",
    }),

    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = color .. "-alien",
      order = "y-" .. order,
      fuel_value = "100MJ",
      fuel_category = "chemical",
      icon = "__zenith-bio__/graphics/icons/" .. color .. "-alien.png",
    }),

    zen.lib.recipe.duplicateFromRaw("iron-plate", {
      name = "nutrient-paste-from-" .. color .. "-alien-spores",
      enabled = false,
      category = "arboretuming",
      subgroup = "raw-resource",
      order = "z-a-" .. order,
      ingredients = {
        { color .. "-alien-spores", 4 }
      },
      result = "nutrient-paste",
      icon = "__zenith-bio__/graphics/icons/nutrient-paste-from-" .. color .. "-alien-spores.png",
      icon_size = 32
    }, true),

    zen.lib.recipe.duplicateFromRaw("iron-plate", {
      name = color .. "-alien-growth",
      enabled = false,
      category = "arboretuming",
      subgroup = "raw-resource",
      order = "z-b-" .. order,
      ingredients = {
        { color .. "-alien-spores", 1 },
        { "nutrient-paste", 8 }
      },
      energy_required = 120,
      result = color .. "-alien",
    }, true),

    zen.lib.recipe.duplicateFromRaw("iron-plate", {
      name = color .. "-alien-extraction",
      enabled = false,
      category = "arboretuming",
      subgroup = "raw-resource",
      order = "z-c-" .. order,
      ingredients = {
        { color .. "-alien", 1 },
        { "nutrient-paste", 10 },
      },
      energy_required = 120,
      results = result
      }
    }, true),

    zen.lib.recipe.duplicateFromRaw("iron-plate", {
      name = color .. "-alien-nutrification",
      enabled = false,
      category = "arboretuming",
      subgroup = "raw-resource",
      order = "z-d-" .. order,
      ingredients = {
        { color .. "-alien", 1 },
        { type = "fluid", name = poison, amount = 5 }
      },
      energy_required = 120,
      results = {
        { name = "nutrient-paste", amount = 10 },
      }
    }, true),

    zen.lib.tech.duplicateFromRaw("advanced-material-processing", {
      name = color .. "-alien-processing",
      icon = "__zenith-bio__/graphics/technology/" .. color .. "-alien-processing.png",
      unit = {
        count = 400,
        ingredients = {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
          {"production-science-pack", 1},
        },
        time = 60
      },
      prerequisites = { "bio-processing-2", "advanced-material-processing-2" },
      effects = {
        {
          type = "unlock-recipe",
          recipe = color .. "-alien-growth",
        },
        {
          type = "unlock-recipe",
          recipe = color .. "-alien-extraction",
        },
        {
          type = "unlock-recipe",
          recipe = color .. "-alien-nutrification",
        },
      }
    }),
  })

end

zen.bio.colors = {"red", "orange", "yellow", "green", "cyan", "blue", "purple", "pink", "white", "black"}

zen.bio.alien("red",    "a", "sulfuric-acid", {{ type = "fluid", name = "bio-hydrogen",              amount = 2  }})
zen.bio.alien("orange", "b", "sulfuric-acid", {{ type = "item",  name = "bio-hydrogen",              amount = 2  }})
zen.bio.alien("cyan",   "e", "sulfuric-acid", {{ type = "item",  name = "raw-cellulose",             amount = 2  }})
zen.bio.alien("purple", "g", "sulfuric-acid", {{ type = "item",  name = "raw-cellulose",             amount = 2  }})
zen.bio.alien("pink",   "h", "sulfuric-acid", {{ type = "item",  name = "raw-cellulose",             amount = 2  }})
zen.bio.alien("white",  "i", "sulfuric-acid", {{ type = "fluid", name = "sodium-hypochlorite",       amount = 10 }})
zen.bio.alien("black",  "j", "sulfuric-acid", {{ type = "fluid", name = "sodium-hypochlorite",       amount = 10 }})

zen.bio.alien("yellow", "c", "sulfuric-acid", {
  { type = "item",  name = "red-czochralski-starter",    amount = 8, probability = 0.5  }
  { type = "item",  name = "green-czochralski-starter",  amount = 8, probability = 0.5  }
  { type = "item",  name = "blue-czochralski-starter",   amount = 8, probability = 0.5  }
})
zen.bio.alien("green",  "d", "sulfuric-acid", {
  { type = "item",  name = "red-czochralski-starter",    amount = 8, probability = 0.5  }
  { type = "item",  name = "green-czochralski-starter",  amount = 8, probability = 0.5  }
  { type = "item",  name = "blue-czochralski-starter",   amount = 8, probability = 0.5  }
})
zen.bio.alien("blue",   "f", "sulfuric-acid", {
  { type = "item",  name = "red-czochralski-starter",   amount = 8, probability = 0.5  }
  { type = "item",  name = "green-czochralski-starter", amount = 8, probability = 0.5  }
  { type = "item",  name = "blue-czochralski-starter",  amount = 8, probability = 0.5  }
})



-- Holy hell that's a ton of aliens to deal with

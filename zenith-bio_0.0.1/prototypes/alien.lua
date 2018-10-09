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
    }),
    zen.lib.recipe.duplicateFromRaw("iron-plate", {
      name = color .. "-alien-growth",
      enabled = true,
      category = "arboretuming",
      subgroup = "raw-resource",
      order = "z-b-" .. order,
      ingredients = {
        { color .. "-alien-spores", 1 },
        { "nutrient-paste", 4 }
      },
      energy_required = 120,
      result = color .. "-alien",
    }),

    zen.lib.recipe.duplicateFromRaw("iron-plate", {
      name = color .. "-alien-extraction",
      enabled = true,
      category = "arboretuming",
      subgroup = "raw-resource",
      order = "z-c-" .. order,
      ingredients = {
        { color .. "-alien", 1 },
        { type = "fluid", name = poison, amount = 20 }
      },
      energy_required = 120,
      results = result or {
        {
          name = "nutrient-paste", amount = 30
        },
      }
    }),
  })

end

zen.bio.colors = {"red", "orange", "yellow", "green", "cyan", "blue", "purple", "pink", "white", "black"}

zen.bio.alien("red", "a", "sulfuric-acid")
zen.bio.alien("orange", "b", "sulfuric-acid")
zen.bio.alien("yellow", "c", "sulfuric-acid")
zen.bio.alien("green", "d", "sulfuric-acid")
zen.bio.alien("cyan", "e", "sulfuric-acid")
zen.bio.alien("blue", "f", "sulfuric-acid")
zen.bio.alien("purple", "g", "sulfuric-acid")
zen.bio.alien("pink", "h", "sulfuric-acid")
zen.bio.alien("white", "i", "sulfuric-acid")
zen.bio.alien("black", "j", "sulfuric-acid")
-- Holy hell that's a ton of aliens to deal with

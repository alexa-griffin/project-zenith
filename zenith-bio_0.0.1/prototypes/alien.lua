function zen.bio.alien(color, order)
  data:extend({
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = color .. "alien-spores",
      order = "w-" .. order,
      icon = "__zenith-bio__/graphics/icons/" .. color .. "alien-spores.png",
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = color .. "-alien",
      order = "y-" .. order,
      icon = "__zenith-bio__/graphics/icons/" .. color .. "alien.png",
    }),
    zen.lib.recipe.duplicateFromRaw("iron-ore", {
      name = "nutrient-paste-from-" .. color .. "-alien-spores",
      subgroup = "raw-resource"
      order = "z-" .. order,
      icon = "__zenith-bio__/graphics/icons/nutrient-paste-from-" .. color .. "-alien-spores.png",
    }),
  })
end

zen.bio.alien("red", "a")
zen.bio.alien("orange", "b")
zen.bio.alien("yellow", "c")
zen.bio.alien("green", "d")
zen.bio.alien("cyan", "e")
zen.bio.alien("blue", "f")
zen.bio.alien("purple", "g")
zen.bio.alien("pink", "h")
zen.bio.alien("white", "i")
zen.bio.alien("black", "j") -- Holy hell that's a ton of aliens to deal with

function zen.bio.alien(color, order)
  data:extend({
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = color .. "alien-spores",
      order = "z-" .. order,
      icon = "__zenith-bio__/graphics/icons/" .. color .. "alien-spores.png",
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = color .. "alien",
      order = "z-" .. order .. "-a",
      icon = "__zenith-bio__/graphics/icons/" .. color .. "alien.png",
    }),

  })
end

data:extend({
  zen.lib.tech.duplicateFromRaw("steel-processing", {
    name = "alloying",
    icon = "__zenith-rarification__/graphics/technology/alloying.png",
    prerequisites = { "steel-processing" }
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tin-plate"
      },
    },
  })
})

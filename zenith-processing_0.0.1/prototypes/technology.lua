data:extend({
  zen.lib.tech.duplicateFromRaw("advanced-electronics-2", {
    name = "advanced-electronics-3",
    icon = "__zenith-processing__/graphics/technology/advanced-electronics-3.png",
    prerequisites = { "gold-processing", "nuclear-processing-3", "advanced-electronics-2" },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "quantum-component"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-computer"
      },
    }
  })
})

data:extend({
  zen.lib.tech.duplicateFromRaw("advanced-electronics-2", {
    name = "advanced-electronics-3",
    icon = "__zenith-processing__/graphics/technology/advanced-electronics-3.png",
    prerequisites = {
      "gold-processing",
      "cyan-alien-processing",
      "green-alien-processing",
      "pink-alien-processing",
      "purple-alien-processing",
      "advanced-electronics-2" },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bio-component"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-computer"
      },
    }
  })
})

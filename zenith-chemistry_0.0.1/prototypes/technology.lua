data:extend({
  zen.lib.tech.duplicateFromRaw("oil-processing", {
    name = "syn-gas-processing"
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "syn-gas"
      },
      {
        type = "unlock-recipe",
        recipe = "syn-processing"
      }
    },
  })
})

zen.lib.tech.addPack("sulfur-processing", "science-pack-3")
zen.lib.tech.addPrereq("sulfur-processing", "advanced-oil-processing")

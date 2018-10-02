if zen.settings.debug then
  -- recipes
  data:extend({
    zen.lib.recipe.duplicateFromRaw("fast-transport-belt", {
      name = "faster-transport-belt",
      enabled = true,
    }),
  })

  zen.lib.recipe.addIngredient("electronic-circuit", "crude-oil", 20)
  zen.lib.recipe.removeIngredient("advanced-circuit", "plastic-bar")
  zen.lib.recipe.setIngredientAmount("processing-unit", "electronic-circuit", 50)
  zen.lib.recipe.setIngredientAmount("processing-unit", "sulfuric-acid", 1000)
  zen.lib.recipe.replaceIngredient("engine-unit", "iron-gear-wheel", "copper-plate")
  zen.lib.recipe.addResult("processing-unit", "stone-brick")
  zen.lib.recipe.removeResult("uranium-processing", "uranium-238")
  zen.lib.recipe.replaceResult("basic-oil-processing", "light-oil", "water", { amount = 50 })


  -- tech
  zen.lib.tech.addPack("automation", "space-science-pack")
  zen.lib.tech.removePack("landfill", "science-pack-2")
  zen.lib.tech.addRecipeUnlock("landfill", "centrifuge")
  zen.lib.tech.removeRecipeUnlock("nuclear-power", "centrifuge")
  zen.lib.tech.replaceRecipeUnlock("automation", "long-inserter", "iron-gear-wheel")

end

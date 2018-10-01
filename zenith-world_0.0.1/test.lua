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
zen.lib.recipe.addResult("processing-unit", "stone-brick")
zen.lib.recipe.removeResult("uranium-processing", "uranium-238")

zen.lib.recipe.replaceIngredient("electronic-circuit", "iron-plate", "wood", 1)
zen.lib.recipe.replaceIngredient("advanced-circuit", "copper-cable", "tinned-cable", 4)
zen.lib.recipe.replaceIngredient("advanced-circuit", "electronic-circuit", "electronic-component", 2)
zen.lib.recipe.replaceIngredient("processing-unit", "advanced-circuit", "bronze-cable", 4)
zen.lib.recipe.replaceIngredient("processing-unit", "electronic-circuit", "electronic-component", 10)

zen.lib.recipe.addIngredient("production-science-pack", "nutrient-paste", 90)

zen.lib.tech.addRecipeUnlock("tin-processing", "tinned-cable")
zen.lib.tech.addRecipeUnlock("tin-processing", "bronze-cable")
zen.lib.tech.addRecipeUnlock("gold-processing", "gilded-cable")

zen.lib.tech.addRecipeUnlock("advanced-electronics", "electronic-component")
zen.lib.tech.addRecipeUnlock("advanced-electronics-2", "electronic-component")

zen.lib.tech.addPrereq("advanced-electronics", "tin-processing")

zen.lib.tech.addRecipeUnlock("green-alien-processing", "bio-polymer")
zen.lib.tech.addRecipeUnlock("cyan-alien-processing", "bio-polymer")
zen.lib.tech.addRecipeUnlock("purple-alien-processing", "bio-polymer")
zen.lib.tech.addRecipeUnlock("pink-alien-processing", "bio-polymer")


if not zen.machines then
  data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 6
  data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 10
end

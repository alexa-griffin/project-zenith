data.raw.fluid["petroleum-gas"].icon = "__zenith-chemistry__/graphics/icons/petroleum-gas.png"
data.raw.recipe["solid-fuel-from-petroleum-gas"].icon = "__zenith-chemistry__/graphics/icons/solid-fuel-from-petroleum-gas.png"

zen.lib.recipe.replaceIngredient("plastic-bar", "petroleum-gas", "raw-polyethylene", 4)
zen.lib.recipe.addIngredient("plastic-bar", "water", 20)

zen.lib.recipe.replaceIngredient("sulfur", "water", "ethylene", 20)

zen.lib.recipe.addIngredient("lubricant", "stone", 2)

zen.lib.recipe.replaceResult("basic-oil-processing", "petroleum-gas", "ethylene", {
  amount = 40
})

zen.lib.recipe.replaceResult("light-oil-cracking", "petroleum-gas", "ethylene", {
  amount = 20
})

data.raw["recipe"]["light-oil-cracking"].icon = "__zenith-chemistry__/graphics/icons/light-oil-cracking"

data.raw["recipe"]["rocket-fuel"].category = "chemistry"
data.raw["recipe"]["rocket-fuel"].ingredients = {
  { type = "item", name = "rocket-fuel-igniter", amount = 1 },
  { type = "item", name = "rocket-fuel-burner", amount = 1 },
  { type = "item", name = zen.logistics and "scandium-pipe" or "pipe", amount = 1 },
}

data.raw["item"]["rocket-fuel"].fuel_value = "350MJ"


-- tech
zen.lib.tech.addPack("sulfur-processing", "science-pack-3")
zen.lib.tech.addPrereq("sulfur-processing", "advanced-oil-processing")

zen.lib.tech.addRecipeUnlock("plastics", "raw-polyethylene")

zen.lib.tech.replaceRecipeUnlock("oil-processing", "solid-fuel-from-petroleum-gas", "solid-fuel-from-ethylene")
zen.lib.tech.addRecipeUnlock("advanced-oil-processing", "solid-fuel-from-petroleum-gas")

zen.lib.tech.addRecipeUnlock("rocket-silo", "rocket-fuel-igniter")
zen.lib.tech.addRecipeUnlock("rocket-silo", "rocket-fuel-burner")

data.raw.fluid["petroleum-gas"].icon = "__zenith-chemistry__/graphics/icons/petroleum-gas.png"
data.raw.recipe["solid-fuel-from-petroleum-gas"].icon = "__zenith-chemistry__/graphics/icons/solid-fuel-from-petroleum-gas.png"

zen.lib.recipe.replaceIngredient("plastic-bar", "petroleum", "raw-polyethylene", 20)
zen.lib.recipe.replaceIngredient("sulfur", "water", "ethylene", 20)
zen.lib.recipe.addIngredient("lubricant", "stone", 2)


-- tech
zen.lib.tech.addPack("sulfur-processing", "science-pack-3")
zen.lib.tech.addPrereq("sulfur-processing", "advanced-oil-processing")
zen.lib.tech.addRecipeUnlock("plastics", "raw-polyethylene")

zen.lib.tech.addRecipeUnlock("kovarex-enrichment-process", "albert-enrichment-process")
zen.lib.tech.addRecipeUnlock("kovarex-enrichment-process", "slpwnd-enrichment-process")

zen.lib.tech.addRecipeUnlock("nuclear-power", "plutonium-fuel-cell")
zen.lib.tech.addRecipeUnlock("nuclear-power", "thorium-fuel-cell")

zen.lib.tech.addRecipeUnlock("nuclear-fuel-reprocessing", "plutonium-fuel-reprocessing")
zen.lib.tech.addRecipeUnlock("nuclear-fuel-reprocessing", "thorium-fuel-reprocessing")

zen.lib.tech.replaceRecipeUnlock("nuclear-fuel-reprocessing", "nuclear-fuel-reprocessing", "uranium-fuel-reprocessing")

zen.lib.tech.addPrereq("nuclear-power", "nuclear-processing-2")
zen.lib.tech.addPrereq("kovarex-enrichment-processing", "nuclear-processing-2")

zen.lib.recipe.addIngredient("nuclear-fuel", "plutonium-239")
zen.lib.recipe.addIngredient("nuclear-fuel", "thorium-230")

if not zen.machines then
  data.raw["assembling-machine"]["centrifuge"].ingredient_count = 8
end

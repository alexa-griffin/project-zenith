for i, color in ipairs(zen.bio.colors) do
  zen.lib.tech.addRecipeUnlock("bio-processing-2", "nutrient-paste-from-" .. color .. "-alien-spores")

  if zen.chemistry ~= nil then
    zen.lib.recipe.replaceIngredient(color .. "-alien-extraction", "sulfuric-acid", "cyanide", 20)
  end
end

for i, color in ipairs(zen.bio.colors) do
  zen.lib.tech.addRecipeUnlock("bio-processing-2", "nutrient-paste-from-" .. color .. "-alien-spores")
  zen.lib.recipe.addResult("alien-spore-extraction", color .. "-alien-spores", {
    amount_min = 1,
    amount_max = 3,
    probability = 0.5,
  })
  zen.lib.recipe.removeResult("alien-spore-extraction", "water") -- TODO find a less shitty way to do this
end

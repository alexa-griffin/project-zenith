if not zen.lib.recipe then zen.lib.recipe = {} end

-- duplicates recipe from raw
function zen.lib.recipe.duplicateFromRaw(name, overrides, prod)
  prod = prod or false
  if prod then zen.lib.recipe.addProdLim(name) end
  return zen.lib.duplicateFromRaw("recipe", name, overrides)
end

-- adds productivity limitations
function zen.lib.recipe.addProdLim(name)
  if data.raw.recipe[name] then
    for i, module in pairs(data.raw.module) do
      if module.limitation and module.effect.productivity then
        table.insert(module.limitation, name)
      end
    end
  else
    log("recipe: \"" .. name .. "\" does not exist")
  end
end

-- removes productivity limitations
function zen.lib.recipe.removeProdLim(name)
  if data.raw.recipe[name] then
    for i, module in pairs(data.raw.module) do
      if module.limitation and module.effect.productivity then
        table.remove(module.limitation, name)
      end
    end
  else
    log("recipe: \"" .. name .. "\" does not exist")
  end
end

-- adds an ingredient to a recipe
function.zen.lib.recipe.addIngredient(recipe, ingredient, amount)
  amount = amount or 1
  if data.raw.recipe[recipe] and zen.lib.item.exists(ingredient) then
    table.insert(data.raw.recipe[recipe].ingredient, {
      ingredient, amount
    })
  else
    if not data.raw.recipe[recipe] then
      log("recipe: \"" .. recipe .. "\" does not exist")
    else
      log("item/fluid: \"" .. ingredient .. "\" does not exist")
    end
  end
end

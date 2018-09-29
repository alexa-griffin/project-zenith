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

-- checks to see if a recipe is in a fluid category and if not then change it to be in one
function zen.lib.recipe.fluidCapable(recipe, change)
  change = change or false
  if data.raw.recipe[recipe] then
    if zen.lib.fluidCapableCategories[data.raw.recipe[recipe].category] ~= nil then
      return true
    end
    if change then
      if zen.lib.fluidUpgradeableCategories[recipe.category] ~= nil or data.raw.recipe[recipe].category == nil then
        data.raw.recipe[recipe].category = "crafting-with-fluid"
        return true
      end
    else return false end
  else
    log("recipe: \"" .. name .. "\" does not exist")
  end
end

-- adds an ingredient to a recipe
function zen.lib.recipe.addIngredient(recipe, ingredient, amount, difficulty)
  if data.raw.recipe[recipe] and zen.lib.item.exists(ingredient) then
    amount = amount or 1
    if not zen.lib.item.isFluid(ingredient) then
      if data.raw.recipe[recipe].ingredients and difficulty == nil then
        table.insert(data.raw.recipe[recipe].ingredients, {
          ingredient, amount
        })
      else
        table.insert(data.raw.recipe[recipe][difficulty or "normal"].ingredients, {
          ingredient, amount
        })
      end
    else
      if zen.lib.recipe.fluidCapable(recipe, true) then
        if data.raw.recipe[recipe].ingredients and difficulty == nil then
          table.insert(data.raw.recipe[recipe].ingredients, {
            type = "fluid", name = ingredient, amount = amount
          })
        else
          table.insert(data.raw.recipe[recipe][difficulty or "normal"].ingredients, {
            type = "fluid", name = ingredient, amount = amount
          })
        end
      else
        log("recipe: \"" .. recipe .. "\" is not fluid capable")
      end
    end
  else
    if not data.raw.recipe[recipe] then
      log("recipe: \"" .. recipe .. "\" does not exist")
    else
      log("item/fluid: \"" .. ingredient .. "\" does not exist")
    end
  end
end

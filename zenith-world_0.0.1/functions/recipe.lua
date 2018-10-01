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
function zen.lib.recipe.isFluidCapable(recipe, change)
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
      if zen.lib.recipe.isFluidCapable(recipe, true) then
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

-- removes an ingredient from a recipe
function zen.lib.recipe.removeIngredient(recipe, ingredient, difficulty)
  difficulty = difficulty or "normal"
  if data.raw.recipe[recipe] and zen.lib.item.exists(ingredient) then
    if data.raw.recipe[recipe].ingredients then
      for i, item in ipairs(data.raw.recipe[recipe].ingredients) do
        if item[1] == ingredient or item.name == ingredient then
          table.remove(data.raw.recipe[recipe].ingredients, i)
        end
      end
    else
      for i, item in ipairs(data.raw.recipe[recipe][difficulty].ingredients) do
        if item[1] == ingredient or item.name == ingredient then
          table.remove(data.raw.recipe[recipe][difficulty].ingredients, i)
        end
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

-- sets an ingredient's amount
function zen.lib.recipe.setIngredientAmount(recipe, ingredient, amt, difficulty)
  difficulty = difficulty or "normal"
  if data.raw.recipe[recipe] and zen.lib.item.exists(ingredient) then
    if data.raw.recipe[recipe].ingredients then
      for i, item in ipairs(data.raw.recipe[recipe].ingredients) do
        if item[1] == ingredient or item.name == ingredient then
          if item.name == ingredient then
            data.raw.recipe[recipe].ingredients[i].amount = amt
          else
            data.raw.recipe[recipe].ingredients[i][2] = amt
          end
        end
      end
    else
      for i, item in ipairs(data.raw.recipe[recipe][difficulty].ingredients) do
        if item[1] == ingredient or item.name == ingredient then
          if item.name == ingredient then
            data.raw.recipe[recipe][difficulty].ingredients[i].amount = amt
          else
            data.raw.recipe[recipe][difficulty].ingredients[i][2] = amt
          end
        end
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

function zen.lib.recipe.addResult(recipe, ingredient, settings, difficulty)
  settings = settings or {
    amount = 1
  }
  difficulty = difficulty or "normal"
  if data.raw.recipe[recipe] and zen.lib.item.exists(ingredient) then
    if not data.raw.recipe[recipe][difficulty] then
      if data.raw.recipe[recipe].results then
        table.insert(data.raw.recipe[recipe].results, zen.lib.spread({
          name = ingredient,
          type = zen.lib.item.getType(ingredient)
        }, settings))
      else
        local prevResult = {
          name = data.raw.recipe[recipe].result,
          amount = data.raw.recipe[recipe].result_amount or 1
        }

        data.raw.recipe[recipe].result = nil
        data.raw.recipe[recipe].result_amount = nil

        if not data.raw.recipe[recipe].icon then
          data.raw.recipe[recipe].icon = zen.lib.item.getIcon(prevResult.name).icon
          data.raw.recipe[recipe].icon_size = zen.lib.item.getIcon(prevResult.name).icon_size
        end
        if not data.raw.recipe[recipe].subgroup then
          data.raw.recipe[recipe].subgroup = zen.lib.item.getSubgroup(prevResult.name)
        end

        data.raw.recipe[recipe].results = {}
        table.insert(data.raw.recipe[recipe].results, zen.lib.spread({
          name = ingredient,
          type = zen.lib.item.getType(ingredient)
        }, settings))
        table.insert(data.raw.recipe[recipe].results, prevResult)
      end
    else
      if data.raw.recipe[recipe][difficulty].results then
        table.insert(data.raw.recipe[recipe][difficulty].results, zen.lib.spread({
          name = ingredient,
          type = zen.lib.item.getType(ingredient)
        }, settings))
      else
        local prevResult = {
          name = data.raw.recipe[recipe][difficulty].result,
          amount = data.raw.recipe[recipe][difficulty].result_amount or 1
        }

        if not data.raw.recipe[recipe].icon then
          data.raw.recipe[recipe].icon = zen.lib.item.getIcon(prevResult.name).icon
          data.raw.recipe[recipe].icon_size = zen.lib.item.getIcon(prevResult.name).icon_size
        end

        if not data.raw.recipe[recipe].subgroup then
          data.raw.recipe[recipe].subgroup = zen.lib.item.getSubgroup(prevResult.name)
        end

        data.raw.recipe[recipe][difficulty].result = nil
        data.raw.recipe[recipe][difficulty].result_amount = nil

        data.raw.recipe[recipe][difficulty].results = {}
        table.insert(data.raw.recipe[recipe][difficulty].results, zen.lib.spread({
          name = ingredient,
          type = zen.lib.item.getType(ingredient)
        }, settings))
        table.insert(data.raw.recipe[recipe][difficulty].results, prevResult)
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


function zen.lib.recipe.removeResult(recipe, result)
  difficulty = difficulty or "normal"
  if data.raw.recipe[recipe] and zen.lib.item.exists(result) then
    if data.raw.recipe[recipe].result or data.raw.recipe[recipe].results.length == 1 then
      log("cannot remove: \"" .. result .. "\" from recipe: \"" .. recipe .. "\" containing only one result")
    else
      if data.raw.recipe[recipe].results then
        for i, item in ipairs(data.raw.recipe[recipe].results) do
          if item.name == result then
            table.remove(data.raw.recipe[recipe].results, i)
          end
        end
      else
        for i, item in ipairs(data.raw.recipe[recipe][difficulty].results) do
          if item.name == result then
            table.remove(data.raw.recipe[recipe][difficulty].results, i)
          end
        end
      end
    end
  else
    if not data.raw.recipe[recipe] then
      log("recipe: \"" .. recipe .. "\" does not exist")
    else
      log("item/fluid: \"" .. result .. "\" does not exist")
    end
  end
end

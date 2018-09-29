if not zen.lib.recipe then zen.lib.recipe = {} end


function zen.lib.recipe.duplicateFromRaw(name, overrides)
  return zen.lib.duplicateFromRaw("recipe", name, overrides)
end

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

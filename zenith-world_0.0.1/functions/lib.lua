zen.lib.fluidCapableCategories = { "chemistry", "crafting-with-fluid", "oil-processing" }
zen.lib.fluidUpgradeableCategories = { "crafting", "advanced-crafting" }

-- duplicates an element from raw data
function zen.lib.duplicateFromRaw(type, name, overrides)
  local new = {}
  if data.raw[type][name] then
    new = util.table.deepcopy(data.raw[type][name])
    for key, val in pairs(overrides) do
      new[key] = val
    end
  else
    log(type .. ": \"" .. name .. "\" does not exist")
    return new
  end
  return new
end

function zen.lib.log(logee)
  if type(logee) == "table" then
    log( serpent.block( logee, { comment = false, numformat = '%1.8g' } ) )
  else log(logee) end
end

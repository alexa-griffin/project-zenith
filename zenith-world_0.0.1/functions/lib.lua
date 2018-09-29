zen.lib.fluidCapableCategories = { "chemistry", "crafting-with-fluid", "oil-processing" }
zen.lib.fluidUpgradeableCategories = { "crafting", "advanced-crafting", nil }

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
  end
  return new
end

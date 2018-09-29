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

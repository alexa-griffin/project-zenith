if not zen.lib.item then zen.lib.item = {} end

-- duplicates item from raw
function zen.lib.item.duplicateFromRaw(name, overrides)
  return zen.lib.duplicateFromRaw("item", name, overrides)
end

-- is an item a fluid
function zen.lib.item.isFluid(name)
  if data.raw.fluid[name] then return true end
  return false
end

zen.lib.item.exists(name)
  if data.raw.fluid[name] or data.raw.item[name] then return true end
  return false
end

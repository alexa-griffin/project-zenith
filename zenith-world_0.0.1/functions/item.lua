-- items and fluids are the same thing where this mod is concerned

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

-- does an item or fluid exist
function zen.lib.item.exists(name)
  if data.raw.fluid[name] or data.raw.item[name] then return true end
  return false
end

function zen.lib.item.getType(name)
  if data.raw.fluid[name] then return "fluid" end
  return "item"
end

function zen.lib.item.getIcon(item)
  if zen.lib.item.exists(item) then
    if zen.lib.item.isFluid(item) then return {
      icon = data.raw.fluid[item].icon,
      icon_size = data.raw.fluid[item].icon_size
    }
    else return {
      icon = data.raw.item[item].icon,
      icon_size = data.raw.item[item].icon_size
    } end
  else
    log("item/fluid: \"" .. item .. "\" does not exist")
  end
end

function zen.lib.item.getSubgroup(item)
  if zen.lib.item.exists(item) then
    if zen.lib.item.isFluid(item) then return data.raw.fluid[item].subgroup or "fluid-recipes"
    else return data.raw.item[item].subgroup end
  else
    log("item/fluid: \"" .. item .. "\" does not exist")
  end
end

function zen.lib.item.setAll(key, value, filters)
  function setFunc(toSet)
    toSet[key] = value
  end

  if not filters then
    zen.lib.doAll(data.raw["items"], setFunc)
    zen.lib.doAll(data.raw["tools"], setFunc)
    zen.lib.doAll(data.raw["item-with-entity-data"], setFunc)
  else
    zen.lib.doAll(data.raw["items"], "name", filters, setFunc)
    zen.lib.doAll(data.raw["tools"], "name", filters, setFunc)
    zen.lib.doAll(data.raw["item-with-entity-data"], "name", filters, setFunc)
  end
end

function zen.lib.item.modifyRaw(name, overrides)
  zen.lib.modifyRaw("item", name, overrides)
end

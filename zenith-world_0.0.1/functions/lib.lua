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

function zen.lib.doAll(target, func)
  for k, v in ipairs(target) do
    func(target[v], v, k, target)
  end
end

function zen.lib.doAllFilter(target, tester, values, func)
  for k, v in ipairs(target) do
    if values[target[k][tester]] or target[k][tester] == values then
      func(target[v], v, k, target)
    end
  end
end

function zen.lib.log(logee)
  if type(logee) == "table" then
    log( serpent.block( logee, { comment = false, numformat = '%1.8g' } ) )
  else log(logee) end
end

function zen.lib.spread(target, other)
  for k,v in pairs(other) do target[k] = v end
  return target
end

-- changes raw data in bulk
function zen.lib.modifyRaw(type, name, overrides)
  local new = {}
  if data.raw[type][name] then
    for key, val in pairs(overrides) do
      data.raw[type][name][key] = val
    end
  else
    log(type .. ": \"" .. name .. "\" does not exist")
  end
end

function zen.lib.hexToColor(hex)
  local hex = hex:gsub("#","")
  if hex:len() == 3 then
    return {
      r = tonumber("0x" .. hex:sub(1, 1) * 17) / 255,
      g = tonumber("0x" .. hex:sub(2, 2) * 17) / 255,
      b = tonumber("0x" .. hex:sub(3, 3) * 17) / 255
    }
  else
    return {
      r = tonumber("0x" .. hex:sub(1, 2)) / 255,
      g = tonumber("0x" .. hex:sub(3, 4)) / 255,
      b = tonumber("0x" .. hex:sub(5, 6)) / 255
    }
  end
end

-- thank you bob
function zen.lib.getBeltSpeed(ips)
  return ips * 3/1280 --0.00234375
end

for i, _ in pairs(data.raw["furnace"]) do
  if zen.lib.inArr(data.raw["furnace"][i].crafting_categories, "smelting") then
    local machine = zen.lib.duplicateFromRaw("furnace", i, {
      ingredient_count = 2,
      type = "assembling-machine",
    })
    data.raw["assembling-machine"][machine.name] = machine
    data.raw["furnace"][i] = nil
  end
end


-- data.raw["furnace"]["stone-furnace"].type = "assembling-machine"

data.raw.item["stone"].icon = "__zenith-rarification__/graphics/icons/stone.png"
data.raw.item["coal"].icon = "__zenith-rarification__/graphics/icons/coal.png"

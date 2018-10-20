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

data.raw["recipe"]["low-density-structure"].normal.ingredients = {
  { "bio-polymer", 5 },
  { "plastic-bar", 5 },
  { "scandium-plate", 10 },
  { "steel-plate", 10 },
  { "tin-plate", 5 },
}

data.raw["recipe"]["low-density-structure"].expensive.ingredients = {
  { "bio-polymer", 10 },
  { "plastic-bar", 10 },
  { "scandium-plate", 10 },
  { "steel-plate", 10 },
  { "tin-plate", 10 },
}


data.raw.item["stone"].icon = "__zenith-rarification__/graphics/icons/stone.png"
data.raw.item["coal"].icon = "__zenith-rarification__/graphics/icons/coal.png"

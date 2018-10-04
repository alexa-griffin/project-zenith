for i, furnace in ipairs(data.raw.furnace) do
  if furnace.crafting_categories["smelting"] ~= nil then
    furnace.source_inventory_size = 2
  end
end

data.raw.item["stone"].icon = "__zenith-rarification__/graphics/icons/stone.png"
data.raw.item["coal"].icon = "__zenith-rarification__/graphics/icons/coal.png"

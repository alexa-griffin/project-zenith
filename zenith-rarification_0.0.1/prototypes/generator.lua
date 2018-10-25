
function generateOreItems(settings)
  data:extend({
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = "raw-" .. settings.name .. "-ore",
      icon = "__zenith-rarification__/graphics/icons/raw-" .. settings.name .. "-ore.png",
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-dust",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-dust.png",
    }),
    zen.lib.duplicateFromRaw("fluid", "water", {
      name = settings.name .. "-slurry",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-slurry.png",
      base_color = zen.lib.hexToColor(settings.slurry.base_color),
      flow_color = zen.lib.hexToColor(settings.slurry.flow_color),
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-nugget",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-nugget.png",
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = settings.name .. "-crystals",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-crystals.png",
    }),
    zen.lib.duplicateFromRaw("fluid", "water", {
      name = settings.name .. "-essence",
      icon = "__zenith-rarification__/graphics/icons/" .. settings.name .. "-essence.png",
      base_color = zen.lib.hexToColor(settings.essence.base_color),
      flow_color = zen.lib.hexToColor(settings.essence.flow_color),
    }),
    zen.lib.item.duplicateFromRaw("iron-ore", {
      name = "pure-" .. settings.name,
      icon = "__zenith-rarification__/graphics/icons/pure-" .. settings.name .. ".png",
    }),
  })
end

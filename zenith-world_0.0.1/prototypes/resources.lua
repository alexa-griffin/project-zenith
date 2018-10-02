if zen.settings.recolor_ore then
  data.raw.resource["copper-ore"].stages.sheet.filename = "__zenith-world__/graphics/entity/cupric-ore/cupric-ore.png"
  data.raw.resource["copper-ore"].stages.sheet.hr_version.filename = "__zenith-world__/graphics/entity/cupric-ore/hr-cupric-ore.png"
  data.raw.resource["copper-ore"].map_color = { r = 0.4, g = 0.7, b = 0.3 }

  data.raw.resource["iron-ore"].stages.sheet.filename = "__zenith-world__/graphics/entity/ferric-ore/ferric-ore.png"
  data.raw.resource["iron-ore"].stages.sheet.hr_version.filename = "__zenith-world__/graphics/entity/ferric-ore/hr-ferric-ore.png"
  data.raw.resource["iron-ore"].map_color = { r = 0.903, g = 0.308, b = 0.215 }
end

data.raw.resource["copper-ore"].minable.result = "cupric-ore"
data.raw.resource["iron-ore"].minable.result = "ferric-ore"

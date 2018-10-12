function getBasicAutoplaceControls (settings, enemy_settings)
  return {
    ["iron-ore"] = settings,
    ["copper-ore"] = settings,
    ["stone"] = settings,
    ["coal"] = settings,
    ["uranium-ore"] = settings,
    ["crude-oil"] = settings,
    ["enemy-base"] = enemy_settings
  }
end

data.raw["map-gen-presets"]["default"]["alexas-config"] = {
  order = "y",
  basic_settings =
  {
    autoplace_controls = getBasicAutoplaceControls({
      frequency = "very-low",
      size = "very-high",
      richness = "very-good"
    }, {
      size = "none",
    }),
    water = "none",
    trees = "low",
  },
  advanced_settings = {
    enemy_evolution = { enabled = false },
    enemy_expansion = { enabled = false },
    pollution = { enabled = false },
  }
}

data.raw["map-gen-presets"]["default"]["alexas-config-fight"] = {
  order = "z",
  basic_settings =
  {
    autoplace_controls = getBasicAutoplaceControls({
      frequency = "very-low",
      size = "very-high",
      richness = "very-good"
    }, nil),
    water = "none",
    trees = "low",
  },
  advanced_settings = {
    enemy_expansion = { enabled = false },
  }
}

data:extend({
  zen.lib.recipe.duplicateFromRaw("rocket-part", {
    name = "superluminal-rocket-part",
    ingredients = {
      { "superluminal-power-supply", 1 },
      { "superluminal-drive", 1 },
      { "superluminal-structure", 1 },
      { "superluminal-thruster", 1 },
      { "superluminal-brain", 1 },
      { "superluminal-tachyon-generator", 1 },
    },
    result = "superluminal-rocket-part",
  }),
  zen.lib.recipe.duplicateFromRaw("satellite", {
    name = "superluminal-power-supply",
    ingredients = {
      { "fusion-reactor", 500 },
      { "nuclear-reactor", 100 },
      { "plutonium-fuel-cell", 500 },
      { "uranium-fuel-cell", 500 },
      { "thorium-fuel-cell", 500 },
      { "pionium", 500 },
    },
    result = "superluminal-power-supply",
  }),
  zen.lib.recipe.duplicateFromRaw("satellite", {
    name = "superluminal-brain",
    ingredients = {
      { "rocket-control-unit", 500 },
      { "god-module-7", 100 },
      { "pure-speed-module-7", 100 },
      { "pure-productivity-module-7", 100 },
      { "bio-computer", 500 },
    },
    result = "superluminal-brain",
  }),
  zen.lib.recipe.duplicateFromRaw("satellite", {
    name = "superluminal-data-transfer-computer",
    ingredients = {
      { "rocket-control-unit", 100 },
      { "speed-module-7", 100 },
      { "productivity-module-7", 100 },
      { "effectivity-module-7", 100 },
      { "bio-computer", 100 },
      { "radar", 100 },
    },
    result = "superluminal-data-transfer-computer",
  }),
  zen.lib.recipe.duplicateFromRaw("satellite", {
    name = "superluminal-drive",
    ingredients = {
      { "rocket-fuel", 500 },
      { "fusion-reactor", 500 },
      { "fusion-reactor-equipment", 500 },
    },
    result = "superluminal-drive",
  }),
  zen.lib.recipe.duplicateFromRaw("satellite", {
    name = "superluminal-structure",
    ingredients = {
      { "low-density-structure", 1000 },
      { "nuclear-polymer", 1000 },
      { "scandium-plate", 1000 },
      { "energy-shield-mk2-equipment", 1000 },
    },
    result = "superluminal-structure",
  }),
  zen.lib.recipe.duplicateFromRaw("satellite", {
    name = "superluminal-tachyon-generator",
    ingredients = {
      { "discharge-defense-equipment", 1000 },
      { "nuclear-polymer", 1000 },
      { "pionium", 1000 },
    },
    result = "superluminal-tachyon-generator",
  }),
  zen.lib.recipe.duplicateFromRaw("satellite", {
    name = "superluminal-thruster",
    ingredients = {
      { "discharge-defense-equipment", 1000 },
      { "plutonium-fuel-cell", 500 },
      { "uranium-fuel-cell", 500 },
      { "thorium-fuel-cell", 500 },
    },
    result = "superluminal-thruster",
  }),
  zen.lib.recipe.duplicateFromRaw("rocket-silo", {
    name = "superluminal-rocket-silo",
    ingredients = {
      { "rocket-silo", 50 },
    },
    result = "superluminal-rocket-silo",
  }),
})

local effects = {
  { speed = { bonus = 0.1 }, },
  { speed = { bonus = 0.3 }, },
  { speed = { bonus = 0.5 }, },
  { speed = { bonus = 0.7 }, },
  { speed = { bonus = 0.9 }, },
  { speed = { bonus = 1.1 }, },
  { speed = { bonus = 1.4 }, },
  { speed = { bonus = 2   }, },
}

zen.module.generateCombinedModule("pure-speed",
  "effectivity", "speed", "speed-module",
  effects, zen.module.generateCombinedModuleRecipe("pure-speed", "speed", "effectivity"),
  {"item-description.effectivity-module"}, "d", "speed-module", "__module-zenith__/graphics/technology/pure-speed-module.png",
  zen.module.generateTechUnit(100, zen.settings.module_multiplier * 2))

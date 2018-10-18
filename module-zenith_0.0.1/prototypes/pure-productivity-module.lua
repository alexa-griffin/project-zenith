local effects = {
  { productivity = { bonus = 0.04 }, },
  { productivity = { bonus = 0.06 }, },
  { productivity = { bonus = 0.08 }, },
  { productivity = { bonus = 0.1  }, },
  { productivity = { bonus = 0.15 }, },
  { productivity = { bonus = 0.2  }, },
  { productivity = { bonus = 0.3  }, },
  { productivity = { bonus = 0.4  }, },
}


zen.module.generateCombinedModule("pure-productivity",
  "effectivity", "productivity", "productivity-module",
  effects, zen.module.generateCombinedModuleRecipe("pure-productivity", "productivity", "effectivity"),
  {"item-description.effectivity-module"}, "d", "productivity-module", "__module-zenith__/graphics/technology/pure-productivity-module.png",
  zen.module.generateTechUnit(100, zen.settings.module_multiplier * 2))

local effects = {
  { pollution = { bonus = -0.05 }, consumption = { bonus = -0.2 }, productivity = { bonus = 0.04 }, speed = { bonus = 0.1 }, },
  { pollution = { bonus = -0.1  }, consumption = { bonus = -0.5 }, productivity = { bonus = 0.06 }, speed = { bonus = 0.3 }, },
  { pollution = { bonus = -0.2  }, consumption = { bonus = -0.6 }, productivity = { bonus = 0.08 }, speed = { bonus = 0.5 }, },
  { pollution = { bonus = -0.3  }, consumption = { bonus = -0.8 }, productivity = { bonus = 0.1  }, speed = { bonus = 0.7 }, },
  { pollution = { bonus = -0.4  }, consumption = { bonus = -1.1 }, productivity = { bonus = 0.15 }, speed = { bonus = 0.9 }, },
  { pollution = { bonus = -0.5  }, consumption = { bonus = -1.3 }, productivity = { bonus = 0.2  }, speed = { bonus = 1.1 }, },
  { pollution = { bonus = -0.6  }, consumption = { bonus = -1.6 }, productivity = { bonus = 0.3  }, speed = { bonus = 1.4 }, },
  { pollution = { bonus = -0.7  }, consumption = { bonus = -2.4 }, productivity = { bonus = 0.4  }, speed = { bonus = 2   }, },
}

zen.module.generateCombinedModule("god",
  "pure-productivity", "pure-speed", "speed-module",
  effects, zen.module.generateCombinedModuleRecipe("god", "pure-productivity", "pure-speed", true),
  {"item-description.effectivity-module"}, "d", "speed-module", "__module-zenith__/graphics/technology/god-module.png")

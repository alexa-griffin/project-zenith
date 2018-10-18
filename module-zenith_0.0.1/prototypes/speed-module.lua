local effects = {
  { speed = { bonus = 0.1 }, consumption = { bonus = 0.3 } },
  { speed = { bonus = 0.3 }, consumption = { bonus = 0.6 } },
  { speed = { bonus = 0.5 }, consumption = { bonus = 0.7 } },
  { speed = { bonus = 0.7 }, consumption = { bonus = 0.9 } },
  { speed = { bonus = 0.9 }, consumption = { bonus = 1.2 } },
  { speed = { bonus = 1.1 }, consumption = { bonus = 1.4 } },
  { speed = { bonus = 1.4 }, consumption = { bonus = 1.7 } },
  { speed = { bonus = 2   }, consumption = { bonus = 2.5 } },
}

zen.module.generateModule("speed", "speed-module", effects,
  zen.module.generateGenericModuleRecipe("speed"),
  zen.module.generateGenericModuleProcessorRecipe("speed", {
    {},
    {{ "electronic-component", 4 }},
    {{ "pionium", 4 }},
    {{ "fusion-reactor", 8 }},
  }),
  {"item-description.speed-module"}, "c", "speed-module",
  zen.module.generateTechUnit(50, zen.settings.module_multiplier))

local effects = {
  { pollution = { bonus = -0.05 }, consumption = { bonus = -0.2 } },
  { pollution = { bonus = -0.1  }, consumption = { bonus = -0.5 } },
  { pollution = { bonus = -0.2  }, consumption = { bonus = -0.6 } },
  { pollution = { bonus = -0.3  }, consumption = { bonus = -0.8 } },
  { pollution = { bonus = -0.4  }, consumption = { bonus = -1.1 } },
  { pollution = { bonus = -0.5  }, consumption = { bonus = -1.3 } },
  { pollution = { bonus = -0.6  }, consumption = { bonus = -1.6 } },
  { pollution = { bonus = -0.7  }, consumption = { bonus = -2.4 } },
}

zen.module.generateModule("effectivity", "effectivity-module", effects,
  zen.module.generateGenericModuleRecipe("effectivity"),
  zen.module.generateGenericModuleProcessorRecipe("effectivity", {
    {},
    {{ "electronic-component", 4 }},
    {{ "battery", 4 }},
    {{ "fusion-reactor", 8 }},
  }),
  {"item-description.effectivity-module"}, "d", "effectivity-module")

local effects = {
  { productivity = { bonus = 0.04 }, consumption = { bonus = 0.4 }, pollution = { bonus = 0.05  }, speed = { bonus = -0.15 } },
  { productivity = { bonus = 0.06 }, consumption = { bonus = 0.5 }, pollution = { bonus = 0.075 }, speed = { bonus = -0.15 } },
  { productivity = { bonus = 0.08 }, consumption = { bonus = 0.6 }, pollution = { bonus = 0.1   }, speed = { bonus = -0.15 } },
  { productivity = { bonus = 0.1  }, consumption = { bonus = 0.7 }, pollution = { bonus = 0.125 }, speed = { bonus = -0.15 } },
  { productivity = { bonus = 0.15 }, consumption = { bonus = 0.8 }, pollution = { bonus = 0.15  }, speed = { bonus = -0.15 } },
  { productivity = { bonus = 0.2  }, consumption = { bonus = 0.9 }, pollution = { bonus = 0.175 }, speed = { bonus = -0.15 } },
  { productivity = { bonus = 0.3  }, consumption = { bonus = 1   }, pollution = { bonus = 0.2   }, speed = { bonus = -0.15 } },
  { productivity = { bonus = 0.4  }, consumption = { bonus = 1.2 }, pollution = { bonus = 0.25  }, speed = { bonus = -0.15 } },
}

zen.module.generateModule("productivity", "productivity-module", effects,
  zen.module.generateGenericModuleRecipe("productivity"),
  zen.module.generateGenericModuleProcessorRecipe("productivity", {
    {},
    {{ "electronic-component", 4 }},
    {{ "battery", 4 }},
    {{ "fusion-reactor", 8 }},
  }),
  {"item-description.productivity-module"}, "e", "productivity-module")

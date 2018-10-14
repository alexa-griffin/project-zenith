local effects = {
  { speed = { bonus = 0.1 }, consumption = { bonus = 0.3 } },
  { speed = { bonus = 0.2 }, consumption = { bonus = 0.5 } },
  { speed = { bonus = 0.3 }, consumption = { bonus = 0.6 } },
  { speed = { bonus = 0.5 }, consumption = { bonus = 0.8 } },
  { speed = { bonus = 0.6 }, consumption = { bonus = 1   } },
  { speed = { bonus = 0.7 }, consumption = { bonus = 1.1 } },
  { speed = { bonus = 0.8 }, consumption = { bonus = 1.2 } },
  { speed = { bonus = 1   }, consumption = { bonus = 1.5 } },
}

local recipes = {
  {
    { "speed-module-harness-0", 1 },
    { "electronic-circuit", 5 },
  },
}

zen.module.generateModuleItems("speed", "speed-module-1", effects, recipes, {"item-description.speed-module"})

function zen.module.generateModuleItems(name, duplicateTarget, effects, description)
  data:extend({
    -- modules
    zen.lib.duplicateFromRaw("module", duplicateTarget, {
      name = name .. "-module-0",
      localised_description = { description },
      subgroup = name .. "-modules",
      order = "b-a",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-0.png",
      tier = 0,
      effect = effects[1]
    }),
    zen.lib.duplicateFromRaw("module", duplicateTarget, {
      name = name .. "-module-1",
      localised_description = { description },
      subgroup = name .. "-modules",
      order = "b-b",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-1.png",
      tier = 1,
      effect = effects[2]
    }),
    zen.lib.duplicateFromRaw("module", duplicateTarget, {
      name = name .. "-module-2",
      localised_description = { description },
      subgroup = name .. "-modules",
      order = "b-c",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-2.png",
      tier = 2,
      effect = effects[3]
    }),
    zen.lib.duplicateFromRaw("module", duplicateTarget, {
      name = name .. "-module-3",
      localised_description = { description },
      subgroup = name .. "-modules",
      order = "b-d",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-3.png",
      tier = 3,
      effect = effects[4]
    }),
    zen.lib.duplicateFromRaw("module", duplicateTarget, {
      name = name .. "-module-4",
      localised_description = { description },
      subgroup = name .. "-modules",
      order = "b-e",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-4.png",
      tier = 4,
      effect = effects[5]
    }),
    zen.lib.duplicateFromRaw("module", duplicateTarget, {
      name = name .. "-module-5",
      localised_description = { description },
      subgroup = name .. "-modules",
      order = "b-f",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-5.png",
      tier = 5,
      effect = effects[6]
    }),
    zen.lib.duplicateFromRaw("module", duplicateTarget, {
      name = name .. "-module-6",
      localised_description = { description },
      subgroup = name .. "-modules",
      order = "b-g",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-6.png",
      tier = 6,
      effect = effects[7]
    }),
    zen.lib.duplicateFromRaw("module", duplicateTarget, {
      name = name .. "-module-7",
      localised_description = { description },
      subgroup = name .. "-modules",
      order = "b-h",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-7.png",
      tier = 7,
      effect = effects[8]
    }),


    -- harnesses
    zen.lib.duplicateFromRaw("module", "electronic-circuit", {
      name = name .. "-module-0",
      subgroup = name .. "-modules",
      order = "a-a",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-0.png",
    }),
    zen.lib.duplicateFromRaw("module", "electronic-circuit", {
      name = name .. "-module-1",
      subgroup = name .. "-modules",
      order = "a-b",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-1.png",
    }),
    zen.lib.duplicateFromRaw("module", "electronic-circuit", {
      name = name .. "-module-2",
      subgroup = name .. "-modules",
      order = "a-c",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-2.png",
    }),
    zen.lib.duplicateFromRaw("module", "electronic-circuit", {
      name = name .. "-module-3",
      subgroup = name .. "-modules",
      order = "a-d",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-3.png",
    }),
    zen.lib.duplicateFromRaw("module", "electronic-circuit", {
      name = name .. "-module-4",
      subgroup = name .. "-modules",
      order = "a-e",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-4.png",
    }),
    zen.lib.duplicateFromRaw("module", "electronic-circuit", {
      name = name .. "-module-5",
      subgroup = name .. "-modules",
      order = "a-f",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-5.png",
    }),
    zen.lib.duplicateFromRaw("module", "electronic-circuit", {
      name = name .. "-module-6",
      subgroup = name .. "-modules",
      order = "a-g",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-6.png",
    }),
    zen.lib.duplicateFromRaw("module", "electronic-circuit", {
      name = name .. "-module-7",
      subgroup = name .. "-modules",
      order = "a-h",
      icon = "__module-zenith__/graphics/icons/" .. name .. "-module/" .. name .. "-module-7.png",
    }),
  })
end

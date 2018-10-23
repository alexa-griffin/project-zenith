function nyarlathotep(dupTarget, overridesItem, overridesEntity, dupCat)
  dupCat = dupCat or "assembling-machine"
  data:extend({
    zen.lib.item.duplicateFromRaw(dupTarget, overridesItem),
    zen.lib.duplicateFromRaw(dupCat, dupTarget, overridesEntity),
  })
end

local nyarlathotep_glow = {
  {
    effect = "uranium-glow",
    light = {
      intensity = 0.6,
      size = 9.9,
      shift = { 0.0, 0.0 },
      color = zen.lib.hexToColor("#0ed6c5")
    }
  }
}

nyarlathotep("centrifuge", {
    name = "godly-centrifuge",
    place_result = "godly-centrifuge",
  }, {
    name = "godly-centrifuge",
    crafting_speed = 10,
    minable = { mining_time = 1, result = "godly-centrifuge" },
    energy_usage = "1kW",
    module_specification = {
      module_slots = 8
    },
    working_visualisations = nyarlathotep_glow,
})

nyarlathotep("oil-refinery", {
    name = "godly-oil-refinery",
    place_result = "godly-oil-refinery",
  }, {
    name = "godly-oil-refinery",
    crafting_speed = 10,
    minable = { mining_time = 1, result = "godly-oil-refinery" },
    energy_usage = "1kW",
    module_specification = {
      module_slots = 8
    },
    working_visualisations = nyarlathotep_glow,
})

-- nyarlathotep("electric-furnace", {
--     name = "godly-furnace"
--   }, {
--     name = "godly-furnace",
--     crafting_speed = 10,
--     minable = { mining_time = 1, result = "godly-furnace" },
--     energy_usage = "1kW  ",
--     module_specification = {
--       module_slots = 8
--     },
--     working_visualisations = nyarlathotep_glow,
-- }, "furnace")

nyarlathotep("arboretum", {
    name = "godly-arboretum",
    place_result = "godly-arboretum",
  }, {
    name = "godly-arboretum",
    crafting_speed = 10,
    minable = { mining_time = 1, result = "godly-arboretum" },
    energy_usage = "1kW",
    module_specification = {
      module_slots = 8
    },
    working_visualisations = nyarlathotep_glow,
})

nyarlathotep("assembling-machine-2", {
    name = "godly-assembling-machine",
    place_result = "godly-assembling-machine",
  }, {
    name = "godly-assembling-machine",
    crafting_speed = 10,
    minable = { mining_time = 1, result = "godly-assembling-machine" },
    energy_usage = "1kW",
    module_specification = {
      module_slots = 8
    },
    working_visualisations = nyarlathotep_glow,
})

nyarlathotep("chemical-plant", {
    name = "godly-chemical-plant",
    place_result = "godly-chemical-plant",
  }, {
    name = "godly-chemical-plant",
    crafting_speed = 10,
    minable = { mining_time = 1, result = "godly-chemical-plant" },
    energy_usage = "1kW",
    module_specification = {
      module_slots = 8
    },
    working_visualisations = nyarlathotep_glow,
})

nyarlathotep("beacon", {
    name = "godly-beacon",
    place_result = "godly-beacon",
  }, {
    name = "godly-beacon",
    crafting_speed = 10,
    minable = { mining_time = 1, result = "godly-beacon" },
    energy_usage = "1kW",
    module_specification = {
      module_slots = 8
    },
    working_visualisations = nyarlathotep_glow,
}, "beacon")

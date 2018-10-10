function createNuclearItem (settings)
  data:extend({
    {
      type = "item",
      name = settings.name .. "-ore",
      icon = settings.ore_icon or "__zenith-nuclear__/graphics/icons/" .. settings.name .. "-ore.png",
      icon_size = 32,
      flags = {"goes-to-main-inventory"},
      subgroup = "raw-resource",
      order = "g",
      stack_size = 50
    },
    {
      type = "item",
      name = settings.name .. "-" .. settings.active_isotope,
      icon = settings.active_isotope_icon or "__zenith-nuclear__/graphics/icons/" .. settings.name .. "-" .. settings.active_isotope ..".png",
      icon_size = 32,
      flags = {"goes-to-main-inventory"},
      subgroup = "intermediate-product",
      order = "r",
      stack_size = 100
    },
    {
      type = "item",
      name = settings.name .. "-" .. settings.stable_isotope,
      icon = settings.stable_isotope_icon or "__zenith-nuclear__/graphics/icons/" .. settings.name .. "-" .. settings.stable_isotope ..".png",
      icon_size = 32,
      flags = {"goes-to-main-inventory"},
      subgroup = "intermediate-product",
      order = "r",
      stack_size = 100
    },
    {
      type = "recipe",
      name = settings.name .. "-processing",
      energy_required = 10,
      enabled = false,
      category = "centrifuging",
      ingredients = {{settings.name .. "-ore", 10}},
      icon = settings.processing_icon or "__zenith-nuclear__/graphics/icons/" .. settings.name .. "-processing.png",
      icon_size = 32,
      subgroup = "raw-material",
      order = "k",
      results =
      {
        {
          name = settings.name .. "-" .. settings.active_isotope,
          probability = 0.007,
          amount = 1
        },
        {
          name = settings.name .. "-" .. settings.stable_isotope,
          probability = 0.993,
          amount = 1
        }
      }
    },
    {
      type = "recipe",
      name = settings.enrichment_name .. "-enrichment-process",
      energy_required = 50,
      enabled = false,
      category = "centrifuging",
      ingredients = {
        { settings.name .. "-" .. settings.active_isotope, 40 },
        { settings.name .. "-" .. settings.stable_isotope, 5 }
      },
      icon = settings.enrichment_icon or ("__zenith-nuclear__/graphics/icons/" .. settings.enrichment_name .. "-enrichment-process.png"),
      icon_size = 32,
      subgroup = "intermediate-product",
      order = "r-c",
      main_product = "",
      results =
      {
        {
          name = settings.name .. "-" .. settings.active_isotope,
          amount = 41
        },
        {
          name = settings.name .. "-" .. settings.stable_isotope,
          amount = 2
        }
      },
      allow_decomposition = false
    },
    {
      type = "item",
      name = "used-up-" .. settings.name .. "-fuel-cell",
      icon = settings.used_up_fuel_cell_icon or "__zenith-nuclear__/graphics/icons/used-up-" .. settings.name .. "-fuel-cell.png",
      icon_size = 32,
      flags = {"goes-to-main-inventory"},
      subgroup = "intermediate-product",
      order = "r[used-up-uranium-fuel-cell]",
      stack_size = 50
    },
    {
      type = "item",
      name = settings.name .. "-fuel-cell",
      icon = settings.fuel_cell_icon or "__zenith-nuclear__/graphics/icons/" .. settings.name .. "-fuel-cell.png",
      icon_size = 32,
      flags = {"goes-to-main-inventory"},
      subgroup = "intermediate-product",
      order = "r-a[9]",
      fuel_category = "nuclear",
      burnt_result = "used-up-" .. settings.name .. "-fuel-cell",
      fuel_value = "8GJ",
      stack_size = 50
    },
    {
      type = "recipe",
      name = settings.name .. "-fuel-cell",
      energy_required = 10,
      enabled = false,
      category = "centrifuging",
      ingredients =
      {
        { "iron-plate", 10 },
        { settings.name .. "-" .. settings.active_isotope, 1 },
        { settings.name .. "-" .. settings.stable_isotope, 19 }
      },
      result = settings.name .. "-fuel-cell",
    },
    {
      type = "recipe",
      name = settings.name .. "-fuel-reprocessing",
      energy_required = 50,
      enabled = false,
      category = "centrifuging",
      ingredients = {
        { "used-up-" .. settings.name .. "-fuel-cell", 5 }
      },
      icon = "__zenith-nuclear__/graphics/icons/" .. settings.name .. "-fuel-reprocessing.png",
      icon_size = 32,
      subgroup = "intermediate-product",
      order = "r-b",
      results =
      {
        {
          name = settings.reprocessing_result,
          amount = 3
        }
      },
      allow_decomposition = false
    },
    {
      type = "recipe",
      name = settings.name .. "-controlled-decay",
      energy_required = 120,
      enabled = false,
      category = "centrifuging",
      ingredients = {
        { settings.name .. "-ore", 160 },
        { "bio-pionium", 1 },
      },
      icon_size = 32,
      subgroup = "intermediate-product",
      order = "r-b",
      results =
      {
        {
          name = settings.decay_result,
          amount = 161
        }
      },
      allow_decomposition = false
    },
  })
end

createNuclearItem({
  name = "thorium",
  active_isotope = 230,
  stable_isotope = 232,
  enrichment_name = "slpwnd",
  reprocessing_result = "uranium-238",
  decay_result = "plutonium-ore"
})

createNuclearItem({
  name = "plutonium",
  active_isotope = 239,
  stable_isotope = 242,
  enrichment_name = "albert",
  reprocessing_result = "thorium-232",
  decay_result = "uranium-ore"
})

createNuclearItem({
  name = "uranium",
  active_isotope = 235,
  stable_isotope = 238,
  enrichment_name = "kovarex",
  enrichment_icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
  active_isotope_icon = "__base__/graphics/icons/uranium-235.png",
  stable_isotope_icon = "__base__/graphics/icons/uranium-238.png",
  processing_icon = "__base__/graphics/icons/uranium-processing.png",
  fuel_cell_icon = "__base__/graphics/icons/uranium-fuel-cell.png",
  used_up_fuel_cell_icon = "__base__/graphics/icons/used-up-uranium-fuel-cell.png",
  ore_icon = "__base__/graphics/icons/uranium-ore.png",
  reprocessing_result = "plutonium-242",
  decay_result = "thorium-ore"
})

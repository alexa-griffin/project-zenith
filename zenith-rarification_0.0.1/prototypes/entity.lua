data:extend({
  zen.lib.duplicateFromRaw("assembling-machine", {
    name = "ore-processing-machine",
    collision_box = {{ -0.7, -0.7 }, { 0.7, 0.7 }},
    selection_box = {{ -1, -1 }, { 1, 1 }},
    drawing_box = {{ -1, -1.2 }, { 1, 1 }},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type = "input", position = {0.5, -1.5} }}
      },
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type = "input", position = {1.5, -0.5} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type = "output", position = {-0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type = "output", position = {-1.5, 0.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    animation = {
      layers = {
        {
          filename = "__zenith-rarification__/graphics/entity/ore-processing-machine/ore-processing-machine.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          scale = 0.66,
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          scale = 0.66,
        }
      }
    },
  })
})

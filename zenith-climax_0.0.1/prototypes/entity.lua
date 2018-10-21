data:extend({
  zen.lib.duplicateFromRaw("rocket-silo", "rocket-silo", {
    name = "superluminal-rocket-silo",
    ingredient_count = 6,
    rocket_parts_required = 5,
    fixed_recipe = "superluminal-rocket-part",
    rocket_entity = "superluminal-rocket",
    rocket_result_inventory_size = 5,
  }),
  zen.lib.duplicateFromRaw("rocket-silo-rocket", "rocket-silo-rocket", {
    name = "superluminal-rocket",
  }),
})

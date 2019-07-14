beaconed_oil_refinery_3 = util.table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
beaconed_oil_refinery_3.name = "beaconed-oil-refinery-3"
beaconed_oil_refinery_3.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-oil-refinery-3.png"
beaconed_oil_refinery_3.minable.result = "beaconed-oil-refinery-3"
beaconed_oil_refinery_3.crafting_speed = 8.55
beaconed_oil_refinery_3.energy_source.emissions_per_second_per_watt = 6 / 420000
beaconed_oil_refinery_3.energy_source.drain = "4814kW"
beaconed_oil_refinery_3.energy_usage = "6132kW"
beaconed_oil_refinery_3.allowed_effects = {"productivity", "pollution"}
beaconed_oil_refinery_3.fast_replaceable_group = "oil-refinery"

beaconed_oil_refinery_3.module_specification.module_slots = data.raw["assembling-machine"]["oil-refinery"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_oil_refinery_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_oil_refinery_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == true then
  beaconed_oil_refinery_3.animation = make_4way_animation_from_spritesheet({ layers =
  {
    {
      filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
      width = 337,
      height = 255,
      frame_count = 1,
      shift = {2.515625, 0.484375},
      hr_version =
      {
        filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
        width = 386,
        height = 430,
        frame_count = 1,
        shift = util.by_pixel(0, -7.5),
        scale = 0.5
      }
    },
    {
      filename = "__Absorbed-Beacons__/graphics/entity/beaconed-oil-refinery/beaconed-oil-refinery-overlay.png",
      width = 512,
      height = 512,
      frame_count = 1,
      shift = util.by_pixel(0, 0),
      tint = {0.6*0.8, 0.75*0.8, 0, 0},
      blend_mode = "additive",
      hr_version =
      {
        filename = "__Absorbed-Beacons__/graphics/entity/beaconed-oil-refinery/hr-beaconed-oil-refinery-overlay.png",
        width = 1024,
        height = 1024,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        tint = {0.6*0.8, 0.75*0.8, 0, 0},
        blend_mode = "additive",
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
      width = 337,
      height = 213,
      frame_count = 1,
      shift = util.by_pixel(82.5, 26.5),
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
        width = 674,
        height = 426,
        frame_count = 1,
        shift = util.by_pixel(82.5, 26.5),
        draw_as_shadow = true,
        scale = 0.5
      }
    }
  }})
end

data:extend({
  beaconed_oil_refinery_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-oil-refinery-3",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-oil-refinery-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "d[refinery]",
    place_result = "beaconed-oil-refinery-3",
    stack_size = 10
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-oil-refinery-3",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-oil-refinery-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "e",
    ingredients =
    {
      {"beaconed-oil-refinery-2", 1},
      {"speed-module-3", 20}
    },
    results = {
      {type = "item", name = "beaconed-oil-refinery-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 20}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-oil-refinery-3"
  }
})
if zen.settings.recolor_ore then
  for i, particle in ipairs(data.raw.particle["copper-ore-particle"].pictures) do
    particle.filename = "__zenith-world__/graphics/entity/cupric-ore-particle/cupric-ore-particle-" .. i .. ".png"
    particle.hr_version.filename = "__zenith-world__/graphics/entity/cupric-ore-particle/hr-cupric-ore-particle-" .. i .. ".png"
  end

  for i, particle in ipairs(data.raw.particle["iron-ore-particle"].pictures) do
    particle.filename = "__zenith-world__/graphics/entity/ferric-ore-particle/ferric-ore-particle-" .. i .. ".png"
    particle.hr_version.filename = "__zenith-world__/graphics/entity/ferric-ore-particle/hr-ferric-ore-particle-" .. i .. ".png"
  end
end

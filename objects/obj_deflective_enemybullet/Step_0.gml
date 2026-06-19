apply_ricochet(par_indestructable)

image_angle = direction

if ricochet_count == maximum_ricochet || obj_tank_boss.death {
instance_destroy()
}

event_inherited()
for (var i = 0; i < ricochet_count; i++) {
damage = damage * (1 - (i * 0.25))
}
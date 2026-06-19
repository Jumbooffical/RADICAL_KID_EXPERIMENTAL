event_inherited()

if timer == 60 {
instance_create_depth(x, y, depth, obj_smoke_discharge)
}

if timer > 0 {
part_particles_create(global.sys_smoke_trail, x, y + launch, global.pt_smoke_trail, irandom_range(5, 8))
}
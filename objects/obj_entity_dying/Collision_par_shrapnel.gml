if sprite_index == spr_titan_death exit
if instance_exists(obj_airstrike_zone) {
	if distance_to_object(obj_airstrike_zone) < obj_airstrike_zone.radius {
		part_particles_create(global.sys_blood_mist, x, y, global.pt_blood_mist, irandom_range(10, 15))
		instance_destroy()
	}
}
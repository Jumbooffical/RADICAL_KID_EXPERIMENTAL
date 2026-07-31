if crate_hp <= 0 {
	instance_destroy()
	part_particles_create(global.sys_brick_splash, x, y, global.pt_brick_splash, irandom_range(25, 30))
	
}

depth = obj_player.depth - 1
if obj_player.y > y || place_meeting(x, y, obj_smoke_discharge) {
depth = obj_player.depth + 1
}

image_index = 0
if crate_hp < base_hp/2 {
image_index = 1
}
function enemy_exerted() {
	if death exit;
	image_speed = 3
	sprite_index = idle_spr
	path_end(); path_finished = true;
	
	stamina += recovery_rate
	
	if stamina >= 100 {
	my_state = STATE.ALERT
	exhausted = false
	path_alarm = 2
	}
	
	if floor(image_index) == 22
	|| floor(image_index) == 23 {
		var mi = obj_player
		var aim = direction
		
		part_type_direction(mi.pt_gun_smoke, aim - 50, aim + 50, 0, 0);
		part_particles_create(mi.sys_gun_smoke, x + 10, y - 50, mi.pt_gun_smoke, irandom_range(12, 13))
	}
}
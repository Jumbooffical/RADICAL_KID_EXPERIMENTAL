function enemy_teleport() {
	var mi = obj_player
	visible = false
	stamina = 50
	spotted = false
	sprite_index = idle_spr
	mask_index = spr_void
	
	if !arrived {
	x = obj_player.x
	y = obj_player.y
	image_alpha = 0
	}
	
	if distance_to_object(obj_player) <= 50 {
		arrived = true
		phasing_timer--
	}
	
	if arrived {
	path_end() path_finished = true;
	path_alarm = phasing_timer
	phasing_timer--
	visible = true
	image_alpha += 0.0035
	image_blend = choose(c_aqua, c_white)
	
	part_type_speed(global.pt_titan_materialize, 15, 0, 0, 0)
	part_particles_create(global.sys_titan_materialize, x + irandom_range(35, -35),
	y - 850, global.pt_titan_materialize, irandom_range(5, 7))
	}
	
	if phasing_timer <= 0 {
		audio_play_sound(snd_teleport, 1, 0)
		image_alpha = 1
		image_blend = c_white
		mask_index = sprite_index
		arrived = false
		start_teleport = false
		base_phase_timer = 150
		phasing_timer = base_phase_timer
		path_alarm = 2
		my_state = STATE.ALERT
	}
}
function shuriken_printer(){
	
	if step_dist == 0 {

	var chance = 30 * spd_mult
	chance = clamp(chance, 0, 100);

	if (rng <= chance) {
			shuriken++
			obj_mount_GUI.scale = 2
			audio_play_sound(snd_kunai_printed, 1, 0, 0.1, 0, irandom_range(1, 1.5))
		}
	}
			
	if is_rolling && shuriken > 0 {
		obj_mount_GUI.scale = 2
		var mouse_dir = point_direction(x, y, mouse_x, mouse_y)
		with instance_create_depth(x, y, depth, obj_shuriken) {
		    direction = mouse_dir + irandom_range(-10, 10)
		    image_angle = direction;
			velocity = 45 * obj_player.spd_mult
		}
		shuriken--
		audio_play_sound(snd_kunai_swing, 1, 0, 1, 0, 1.5)
		step_dist = 1
	}
}
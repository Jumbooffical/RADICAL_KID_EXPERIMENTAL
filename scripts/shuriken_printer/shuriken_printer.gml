function shuriken_printer(){
	if step_dist == 0 {
	var rng = random_range(0, 100);

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
		var _xinput = keyboard_check(key_right) - keyboard_check(key_left);
		var _yinput = keyboard_check(key_down) - keyboard_check(key_up);
		with instance_create_depth(x - _xinput, y - _yinput, depth, obj_shuriken) {
		    direction = mouse_dir + irandom_range(-30, 30)
		    image_angle = direction;
			velocity = 35 * obj_player.spd_mult
		}
		shuriken--
		audio_play_sound(snd_kunai_swing, 1, 0, 1, 0, 1.5)
		step_dist = 1
	}
}
function kunai_underbarrel_launcher(){
	
	if cooldown == 0 {
	var chance = (10 - firerate) * 10
	chance = clamp(chance, 0, 100);

	if (rng <= chance) {
			kunai++
			obj_barrel_GUI.scale = 2
			audio_play_sound(snd_kunai_printed, 1, 0, 5, 0, 1.5)
		}
	}
			
	if is_reloading && kunai > 0 {
		obj_barrel_GUI.scale = 2
		var mouse_dir = point_direction(x, y, mouse_x, mouse_y)
		with instance_create_depth(x, y, depth, obj_kunai) {
			velocity = 45
		    direction = mouse_dir + irandom_range(-15, 15)
		    image_angle = direction;
		}
		kunai--
		audio_play_sound(snd_kunai_swing, 1, 0, 0.1, 0, 1.5)
	}
}
mask_index = spr_void

if image_speed > 1 {
	image_speed = 1
}

if (image_index >= image_number - 1) {
	image_index = image_number - 1
}

if sprite_index == spr_tankboss_death {
	if floor(image_index) == 17 {
		obj_camera.shake_str += 7
		
		if !kneel {
		audio_play_sound(snd_titan_kneel, 1, 0, 1, 0, 0.7)
		kneel = true
		}
	}
		
	if floor(image_index) == 31 {
		obj_camera.shake_str += 15
		
		if !collapse {
		audio_play_sound(snd_titan_collapse, 1, 0, 1, 0, 0.7)
		collapse = true
		}
	}
}
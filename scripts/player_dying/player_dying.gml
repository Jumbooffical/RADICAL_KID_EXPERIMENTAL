function player_dying() {
	if sound_proc {
		death_count++
		audio_play_sound(snd_dead, 1, 0, 1)
		image_speed = random_range(0.5, 1)
		
		with instance_create_depth(x, y, depth, obj_entity_dying) {
		sprite_index = other.death_spr
		image_xscale = other.image_xscale
		image_speed = other.image_speed
		}
		sound_proc = false
	}

	player_armed = false
	pain = 0.7
}
function enemy_shank() {
	if !spotted exit;
	path_end() path_finished = true	
	
	if cooldown < 0 {
	cooldown = melee[ewID, MELEE.INTERVAL] * random_range(0.8, 1.2)
	
	var pull = 3
	var player_dir = point_direction(x, y, obj_player.x, obj_player.y)
	
	stab = 70
	
	if ewID == ml.fist {
		stab = 0
		pull = 1.5
		
		if left {
		left_punch = 70
		left = false
		} else {
		right_punch = 70
		left = true
		}
	}
	
	var deg = 130
	swing = -deg
	if image_index == -1 {
	swing = deg
	}

	audio_play_sound(melee[ewID, MELEE.STRIKE_SFX], 2, 0, 1, 0, random_range(0.8, 1))
	
	with obj_player {
		if my_state != state.rolling {
			hp -= other.damage
			other.gore += 1
			audio_play_sound(melee[other.ewID, MELEE.HIT_SFX], 1, 0, 1, 0, random_range(0.8, 1))
			instance_create_depth(x, y, depth - 1, obj_slash_vfx)
		}
	}
	smooth_knockback_x += lengthdir_x(pull, player_dir)
	smooth_knockback_y += lengthdir_y(pull, player_dir)	
	}
}
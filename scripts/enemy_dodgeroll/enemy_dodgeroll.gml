function enemy_dodgeroll(){
	path_end()
	image_speed = 0.85
	sprite_index = spr_player_rolling
	
	if reset_frame {
	image_index = 0
	reset_frame = false
	}

	if roll_dir > 90 && roll_dir < 270 {
		image_xscale = -1
	} else {
		image_xscale = 1
	}

	roll_spd = lerp(roll_spd, 0, 0.085)
	
	x += lengthdir_x(roll_spd, roll_dir);
	y += lengthdir_y(roll_spd, roll_dir);
	
	if roll_spd < 0.8 {
	reset_frame = true
	is_rolling = false
	roll_spd = 24
	image_speed = 1
	}
}
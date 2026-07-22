function enemy_dodgeroll(){
	path_end()
	image_speed = 0.85
	sprite_index = roll_spr
	
	if reset_frame {
	image_index = 0
	
	var knockback = 10
	obj_player.smooth_knockback_x -= lengthdir_x(knockback, roll_dir)
	obj_player.smooth_knockback_y -= lengthdir_y(knockback, roll_dir)
	
	reset_frame = false
	}
	
	obj_player.spd_mult = 0.8
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
	roll_spd = 30
	image_speed = 1
	}
}
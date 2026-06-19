function enemy_fist_animation() {
	var mi = obj_player
	var dir = -25 + direction

	var melee_xoffset = 30
	var melee_yoffset = 15
	var gun_x = x + smooth_recoil_x
	var gun_y = y + smooth_arm_inertia + smooth_recoil_y + melee_yoffset

	if my_state != STATE.RETREAT {
	var amt = 44
	var pistol_offset = (dir > 90 && dir < 270) ? -amt : amt;
	gun_x = gun_x + pistol_offset
	}

	var lerp_str = 0.2

	var flip = (dir > 90 && dir < 270) ? -1 : 1;		// If pointing the gun at the left, flip it
	image_xscale = (dir > 90 && dir < 270) ? -1 : 1
	
	dir = 15
	var right_offset = 30
	var left_offset = right_offset + 20
		
	var fist_y = y + smooth_arm_inertia - dir
		
	var left_punch_x = 0
	var left_punch_y = 0
	var right_punch_x = 0
	var right_punch_y = 0
		
	if my_state == STATE.ATTACK {
		var mouse_dir = point_direction(x, y, obj_player.x, obj_player.y) - 180;

		left_punch_x -= lengthdir_x(left_punch, mouse_dir)
		left_punch_y -= lengthdir_y(left_punch, mouse_dir)
			
		right_punch_x -= lengthdir_x(right_punch, mouse_dir)
		right_punch_y -= lengthdir_y(right_punch, mouse_dir)
		dir = point_direction(x, y, obj_player.x, obj_player.y)
			
		if image_xscale = -1 {
			dir = point_direction(x, y, obj_player.x, obj_player.y)
		}
	}
	if image_xscale = -1 {
		right_offset = -right_offset
		left_offset = -left_offset
		fist_y = y + smooth_arm_inertia
	}
	left_punch = lerp(left_punch, -10, lerp_str)
	right_punch = lerp(right_punch, -10, lerp_str)
		
	//right fist
	draw_sprite_ext(enemy_fists, 1, 
	x + right_offset + right_punch_x, fist_y + right_punch_y, 1, flip, dir, c_white, 1);
		
	//left fist
	draw_sprite_ext(enemy_fists, 0, 
	x + left_offset + left_punch_x, fist_y + left_punch_y, 1, flip, dir, c_white, 1);
}
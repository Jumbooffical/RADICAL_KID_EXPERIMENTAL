function enemy_stab_animation() {
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
	smooth_recoil_x = lerp(smooth_recoil_x, 0, lerp_str)
	smooth_recoil_y = lerp(smooth_recoil_y, 0, lerp_str)
	stab = lerp(stab, -10, lerp_str)

	var flip = (dir > 90 && dir < 270) ? -1 : 1;		// If pointing the gun at the left, flip it

	if dir > 90 && dir < 270 {
		image_xscale = -1
	} else {
		image_xscale = 1
	}

	if my_state == STATE.ATTACK {
	var mouse_dir = point_direction(x, y, obj_player.x, obj_player.y) - 180;
	smooth_recoil_x -= lengthdir_x(stab, mouse_dir)
	smooth_recoil_y -= lengthdir_y(stab, mouse_dir)
	dir = point_direction(x, y, obj_player.x, obj_player.y) - 90
		if image_xscale = -1 {
		dir = point_direction(x, y, obj_player.x, obj_player.y) + 90
		}
	}
	
	draw_sprite_ext(melee[ewID, MELEE.ARMED_SPR], 0, gun_x, gun_y, 1, flip, dir, c_white, 1);
	draw_sprite_ext(melee[ewID, MELEE.ARMED_SPR_BLOODY], 0, gun_x, gun_y, 1, flip, dir, c_white, gore);
}
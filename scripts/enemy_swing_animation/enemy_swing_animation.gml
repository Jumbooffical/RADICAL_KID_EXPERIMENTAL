function enemy_swing_animation() {
	var mi = obj_player
	var dir = -25 + swing
	var player_dir = point_direction(x, y, mi.x, mi.y)

	var melee_xoffset = 30
	var melee_yoffset = 15
	if name == obj_enemy_grenadier {
		melee_yoffset = 50
	}
	
	var raise_angle = 0
	
	var hc_offset = 0
	
	var flip = (dir > 90 && dir < 270) ? -1 : 1;
	
	if !spotted {
	hc_offset = 33
	}
	
	if raise {
	var raise_offset = 220
	raise_angle = 90
	melee_yoffset = 15
	
	if name == obj_enemy_assassin {
		raise_angle = 100
	}
	
	var mouse_dir = point_direction(x, y - raise_offset, obj_player.x, obj_player.y + raise_offset) - 180;
	smooth_recoil_x -= lengthdir_x(stab, mouse_dir)
	smooth_recoil_y -= lengthdir_y(stab, mouse_dir)
	}
	
	var gun_x = x + smooth_recoil_x + hc_offset
	var gun_y = y + smooth_arm_inertia + smooth_recoil_y + melee_yoffset
	
	if my_state != STATE.RETREAT && spotted {
	var amt = 44
	var pistol_offset = (player_dir > 90 && player_dir < 270) ? -amt : amt;
	gun_x = gun_x + pistol_offset
	}

	if player_dir > 90 && player_dir < 270 
	&& spotted {
		image_xscale = -1
		dir = 25 - swing
	} else {
		image_xscale = 1
		dir = -25 + swing
	}
	
	var lerp_str = 0.2
	smooth_recoil_x = lerp(smooth_recoil_x, 0, lerp_str)
	smooth_recoil_y = lerp(smooth_recoil_y, 0, lerp_str)
	stab = lerp(stab, -10, lerp_str)
	swing = lerp(swing, raise_angle, lerp_str/3)
	
	if name == obj_enemy_grenadier {
	swing = lerp(swing, raise_angle, lerp_str * 1.5)
	}
	
	if name == obj_enemy_assassin {
		if is_rolling exit;
	}
	
	draw_sprite_ext(melee[ewID, MELEE.ARMED_SPR], gun_frame, gun_x, gun_y, image_xscale, flip, dir, c_white, 1);
	draw_sprite_ext(melee[ewID, MELEE.ARMED_SPR_BLOODY], gun_frame, gun_x, gun_y, image_xscale, flip, dir, c_white, gore);
}
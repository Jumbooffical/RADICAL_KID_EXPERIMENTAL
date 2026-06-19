function swing_animation() {
	var mlID = meleeIndex
	var mouse_dir = point_direction(x, y, mouse_x, mouse_y)
	var angle = 25 + spin
	var dir = -angle + swing
	
	var dist = point_distance(x, y, mouse_x, mouse_y);
	var arm_stretch = 300

	var pistol_offset = player_offset * (dist / arm_stretch);

	var offset_x = lengthdir_x(pistol_offset + aiming_offsetx, mouse_dir);
	var offset_y = lengthdir_y(pistol_offset, mouse_dir);

	var melee_xoffset = 30
	var melee_yoffset = -25
	var gun_x = x + offset_x + smooth_recoil_x
	var gun_y = y + offset_y + smooth_arm_inertia + smooth_recoil_y + melee_yoffset

	var lerp_str = 0.2
	
	var raise_angle = 70

	var flip = (dir > 90 && dir < 270) ? -1 : 1;		// If pointing the gun at the left, flip it

	if mouse_dir > 90 && mouse_dir < 270 {
		dir = angle - swing
	} else {
		dir = -angle + swing
	}
	
	smooth_recoil_x = lerp(smooth_recoil_x, 0, lerp_str)
	smooth_recoil_y = lerp(smooth_recoil_y, 0, lerp_str)
	
	if image_xscale == -1 {
	smooth_recoil_y -= lengthdir_y(stab + 20, dir)
	} else {
	smooth_recoil_y += lengthdir_y(stab + 20, dir)
	}
	
	spin = lerp(spin, 0, lerp_str/3)
	stab = lerp(stab, -20, lerp_str)
	swing = lerp(swing, raise_angle, lerp_str/3)
	
	draw_sprite_ext(melee[mlID, MELEE.ARMED_SPR], gun_frame, gun_x, gun_y, image_xscale, flip, dir, c_white, 1);
	draw_sprite_ext(melee[mlID, MELEE.ARMED_SPR_BLOODY], gun_frame, gun_x, gun_y, image_xscale, flip, dir, c_white, gore);
}
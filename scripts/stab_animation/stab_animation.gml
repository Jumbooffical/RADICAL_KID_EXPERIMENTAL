function stab_animation() {
	var mlID = meleeIndex
	var mouse_dir = point_direction(x, y, mouse_x, mouse_y) - 180;
	var dist = point_distance(x, y, mouse_x, mouse_y);
	var dir = mouse_dir + 180 - spin
	
	var arm_stretch = 300

	var pistol_offset = player_offset * (dist / arm_stretch);

	var offset_x = lengthdir_x(pistol_offset + aiming_offsetx, mouse_dir);
	var offset_y = lengthdir_y(pistol_offset, mouse_dir);

	var melee_xoffset = 30
	var melee_yoffset = 15
	var gun_x = x - offset_x + smooth_recoil_x
	var gun_y = y - offset_y + smooth_arm_inertia + smooth_recoil_y + melee_yoffset

	var lerp_str = 0.2
	smooth_recoil_x = lerp(smooth_recoil_x, 0, lerp_str)
	smooth_recoil_y = lerp(smooth_recoil_y, 0, lerp_str)
	stab = lerp(stab, -10, lerp_str)
	spin = lerp(spin, 0, lerp_str/3)

	var flip = (mouse_x > x) ? 1 : -1;

	if stab > 0 {
	smooth_recoil_x -= lengthdir_x(stab, mouse_dir)
	smooth_recoil_y -= lengthdir_y(stab, mouse_dir)
	dir = mouse_dir + 90
		if image_xscale == -1 {
		dir = mouse_dir - 90
		}
	}
	
	draw_sprite_ext(melee[mlID, MELEE.ARMED_SPR], 0, gun_x, gun_y, 1, flip, dir, c_white, 1);
	draw_sprite_ext(melee[mlID, MELEE.ARMED_SPR_BLOODY], 0, gun_x, gun_y, 1, flip, dir, c_white, gore);
}
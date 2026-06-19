function fist_animation() {
	var mlID = meleeIndex
	
	var mouse_dir = point_direction(x, y, mouse_x, mouse_y);
	var dist = point_distance(x, y, mouse_x, mouse_y);
	var dir = mouse_dir
	var arm_stretch = 300

	var pistol_offset = player_offset * (dist / arm_stretch);

	var offset_x = lengthdir_x(pistol_offset + aiming_offsetx, mouse_dir);
	var offset_y = lengthdir_y(pistol_offset, mouse_dir);
	
	var flip = (mouse_x > x) ? 1 : -1;
	var spacing = -50
	if image_xscale = -1 {
		spacing = -30
	}
	var gun_x = x + offset_x + spacing
	var gun_y = y + offset_y + smooth_arm_inertia

	var lerp_str = 0.2
	
	var right_offset = 30
	var left_offset = right_offset + 20
		
	var fist_y = y + smooth_arm_inertia
		
	var left_punch_x = 0
	var left_punch_y = 0
	var right_punch_x = 0
	var right_punch_y = 0
		
		//Attack?
		left_punch_x += lengthdir_x(left_punch, mouse_dir)
		left_punch_y += lengthdir_y(left_punch, mouse_dir)
			
		right_punch_x += lengthdir_x(right_punch, mouse_dir)
		right_punch_y += lengthdir_y(right_punch, mouse_dir)
		
	
	left_punch = lerp(left_punch, -10, lerp_str)
	right_punch = lerp(right_punch, -10, lerp_str)
		
	//right fist
	draw_sprite_ext(melee[mlID, MELEE.ARMED_SPR], 1, 
	gun_x + right_offset + right_punch_x, 
	gun_y + right_punch_y, 
	1, 
	flip, dir, c_white, 1);
		
	//left fist
	draw_sprite_ext(melee[mlID, MELEE.ARMED_SPR], 0, 
	gun_x + left_offset + left_punch_x, 
	gun_y + left_punch_y, 
	1, 
	flip, dir, c_white, 1);
}
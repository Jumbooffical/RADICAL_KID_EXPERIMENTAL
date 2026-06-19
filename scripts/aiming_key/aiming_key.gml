function aiming_key(_key) {
	if (mouse_check_button(_key)) && (player_armed) && (!is_reloading) {
		if quickslot[selected_item, QSlot.Grip] == spr_chainsaw_grip exit;
	
		// Force recoil penalty the further the reticle is
		var mouse_dist = point_distance(x, y, mouse_x, mouse_y)	
		for (var i = 0; i < round(mouse_dist/500); i++) {
		recoil_penalty = (i * 0.15 + 1) * (recoil_control)
		}
	
		spd_mult = weapon[par_gun.weaponIndex, GUN.SPD_MULT_PENALTY];
		aiming_offsety = 22

		player_offset = 0
		is_aiming = true
		inaccuracy = 0
		
		if (obj_reticle.x > x) ? 1 : -1 {
		image_xscale = 1
		} else {
			image_xscale = -1
		}
	} else {
	if recoil_penalty > 0 {
	recoil_penalty -= 0.01
	}}
}
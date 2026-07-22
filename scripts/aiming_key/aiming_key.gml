function aiming_key(_key) {
	if (mouse_check_button(_key)) && (player_armed) && (!is_reloading) {
		if quickslot[selected_item, QSlot.Grip] == spr_chainsaw_grip exit;
	
		// Force recoil penalty the further the reticle is
		var mouse_dist = point_distance(x, y, obj_reticle.x, obj_reticle.y)	
		for (var i = 0; i < round(mouse_dist/700); i++) {
		recoil_penalty = (i * 0.15 + 1) / (recoil_control)
		}
		
		if NOON_stim_timer <= 0 {
		spd_mult = weapon[wID, GUN.SPD_MULT_PENALTY];
		}
		
		aiming_offsety = 22

		player_offset = 0
		is_aiming = true
		inaccuracy = 0
		
		if (obj_reticle.x > x) ? 1 : -1 {
		image_xscale = 1
		} else {
			image_xscale = -1
		}
		
		smooth_arm_inertia = apply_bobbing(0.02, 0.3)
	} else {
	if recoil_penalty > 0 {
	recoil_penalty -= 0.01
	}}
}
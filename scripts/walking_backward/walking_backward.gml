function walking_backward(){
	image_speed = image_speed / 0.5;
	sprite_index = run_spr
	if (!player_armed) {
	run_spr = spr_player_running
	} else {
	run_spr = spr_player_running_noarm
	}
    
	image_speed = -0.5;
    
    // HARDCODING when walking backward, the animation freeze
    if (image_index <= 0) {
        image_index = sprite_get_number(sprite_index) - 1;
    }
	
	spd_mult = spd_mult / 1.8
	if (is_aiming) {
	spd_mult = weapon[par_gun.weaponIndex, GUN.SPD_MULT_PENALTY]
	sprite_index = spr_player_walking
	} else {
	my_state = state.idle
	}
	
	gun_bob_time += gun_bob_speed / 2;
    var target = sin(gun_bob_time) * gun_bob_amount;
    smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15) / 2;
}
function walking_backward(){
	sprite_index = run_spr
	if (!player_armed) {
	run_spr = spr_player_running
	} else {
	run_spr = spr_player_running_noarm
	}
	image_speed = -image_speed

    // HARDCODING when walking backward, the animation freeze
    if (image_index <= 0) {
        image_index = sprite_get_number(sprite_index) - 1;
    }
	

	if (is_aiming) {
		sprite_index = spr_player_walking
		smooth_arm_inertia = apply_bobbing(0.02, 0.3)
	
	} else {
		my_state = state.idle
		smooth_arm_inertia = apply_bobbing(0.7, 1)		
	}
}
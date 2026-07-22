function moving(){
	sprite_index = run_spr
	if (!player_armed) {
	run_spr = spr_player_running
	} else {
	run_spr = spr_player_running_noarm
	}
	
    smooth_arm_inertia = apply_bobbing(0.7, 1)
}
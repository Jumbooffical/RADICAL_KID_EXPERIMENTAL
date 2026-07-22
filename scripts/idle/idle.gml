function idle(){
	sprite_index = idle_spr
	if (!player_armed) {
	idle_spr = spr_player_idle
	} else {
	idle_spr = spr_player_idle_noarm
	}
	
	smooth_arm_inertia = apply_bobbing(0.1, 0.5)
	
	step_dist = 1
}
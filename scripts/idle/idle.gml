function idle(){
	sprite_index = idle_spr
	if (!player_armed) {
	idle_spr = spr_player_idle
	} else {
	idle_spr = spr_player_idle_noarm
	}
	
	gun_bob_time += gun_bob_speed / 6;
    var target = sin(gun_bob_time) * gun_bob_amount;
    smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15) / 2;
	
	step_dist = 1
}
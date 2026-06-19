function moving(){
	sprite_index = run_spr
	if (!player_armed) {
	run_spr = spr_player_running
	} else {
	run_spr = spr_player_running_noarm
	}
	gun_bob_time += gun_bob_speed;
    var target = sin(gun_bob_time) * gun_bob_amount;
    smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15);
}
function enemy_idle(){
	var mi = obj_player
	reaction_time = base_react_time * obj_player.mult_react_time * 2
	sprite_index = idle_spr
	
	if instance_exists(par_bullet_SCAR) {
	if !(collision_line(x, y, par_bullet_SCAR.x, par_bullet_SCAR.y, par_indestructable, true, true)) {
		if distance_to_object(par_bullet_SCAR) < aggro_range / 3 && !spotted
		&& !obj_player.have_suppressor 
		&& obj_player.selected_item != obj_player.melee_quickslot {
			my_state = STATE.ALERT
			global.grid_dirty = true
		}
	}}
	
switch (name) {
	case (obj_ranged_enemy):
	spotted = false

	sprite_index = idle_spr
	break;


	case (obj_tank_boss):
	spotted = false

	if distance_to_object(par_bullet_SCAR) < aggro_range && !spotted
	&& !obj_player.have_suppressor {
	my_state = STATE.ATTACK
	}
	sprite_index = idle_spr
	break;
}

gun_bob_time += gun_bob_speed / 6;
var target = sin(gun_bob_time) * gun_bob_amount;
smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15) / 2;
}
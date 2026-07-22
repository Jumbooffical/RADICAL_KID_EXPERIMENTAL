function enemy_idle(){
	var mi = obj_player
	reaction_time = base_react_time * obj_player.mult_react_time * 2
	sprite_index = idle_spr
	
	if distance_to_object(mi) < aggro_range
	&& !(collision_line(x, y, mi.x, mi.y, par_indestructable, true, true)) {
		my_state = STATE.ALERT
	}
	
	if instance_exists(par_bullet_SCAR) {
	if !(collision_line(x, y, par_bullet_SCAR.x, par_bullet_SCAR.y, par_indestructable, true, true)) {
		if distance_to_object(par_bullet_SCAR) < aggro_range / 1.5 && !spotted
		&& !obj_player.have_suppressor 
		&& obj_player.selected_item != obj_player.melee_quickslot {
			my_state = STATE.ALERT
			global.grid_dirty = true
		}
	}}
	
	if instance_exists(par_enemybullet_SCAR) {
	if !(collision_line(x, y, par_enemybullet_SCAR.x, par_enemybullet_SCAR.y, par_indestructable, true, true)) {
		if distance_to_object(par_enemybullet_SCAR) < aggro_range / 2 && !spotted {
			my_state = STATE.ALERT
			global.grid_dirty = true
		}
	}}
	
	if instance_exists(obj_player_afterimg) {
	if !(collision_line(x, y, obj_player_afterimg.x, obj_player_afterimg.y, obj_player_afterimg, true, true)) {
		if distance_to_object(obj_player_afterimg) < aggro_range / 2 && !spotted {
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

smooth_arm_inertia = apply_bobbing(0.1, 0.5)
}
function enemy_chase(){
	var mi = obj_player
	
	if path_alarm == 1 {
		if instance_exists(obj_sniper_boss) {
			aggro_range = 600
		} else {
			aggro_range = base_aggro * 2
		}
		
		sprite_index = walk_spr
		enemy_spd = base_spd
	
		if gun_type == WeaponType.SMG
		|| gun_type == WeaponType.AR
		|| gun_type == WeaponType.Pistol 
		|| gun_type == WeaponType.Shotgun {
			sprite_index = run_spr
		}
		
		if gun_type == WeaponType.Bolt ||
		gun_type == WeaponType.DMR {
			aggro_range = base_aggro * 2.5
			enemy_spd = base_spd * 0.5
		}
	}

	if distance_to_object(mi) < aggro_range/4 
	&& (!collision_line(x, y, obj_player.x, obj_player.y, par_pathwall, true, true)){ 
		path_end(); path_finished = true;
	}
	
	if sniper_minion {
	recalc_path_to(mi.x, mi.y, enemy_spd)
	exit;
	}
			
	if path_alarm == 1 {		
		mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, true);
		path_start(path, enemy_spd, path_action_stop, false);
		mp_grid_add_instances(global.grid, par_pathwall, false);
	}
}
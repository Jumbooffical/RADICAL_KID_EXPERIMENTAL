function enemy_retreat() {
	if path_alarm == 1 {
	sprite_index = run_spr
	}
	
	if name != obj_melee_enemy {
	enemy_spd = base_spd * 1.5
	}
	
	if name = obj_tank_boss
	|| name = obj_sniper_boss {
	enemy_spd = 6
	image_speed = 2
	}
	
	var cover = instance_nearest(x, y, obj_retreat_zone)
	
	if gun_type == WeaponType.Bolt
	|| gun_type == WeaponType.DMR {
		enemy_spd = base_spd * 1.5
		var dir = point_direction(obj_player.x, obj_player.y, x, y); 
		var dist = 1200

		var avoidx = x + lengthdir_x(dist, dir);
		var avoidy = y + lengthdir_y(dist, dir);
	
		recalc_path_to(avoidx, avoidy, enemy_spd);
	} else {
	recalc_path_to(cover.x, cover.y, enemy_spd);
	}
	
	if distance_to_object(obj_retreat_zone) < 50 {
	path_end(); path_finished = true;
	}
	
	if retreat_alarm > 0 {
		retreat_alarm--
		
		if retreat_alarm == 1 {
			if rng < 60 {
				my_state = STATE.IDLE
				spotted = false
			} else {
				my_state = STATE.ALERT
			}
		}
	}
}
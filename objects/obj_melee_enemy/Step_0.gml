hands_count = melee[ewID, MELEE.HANDED]
attack_style = melee[ewID, MELEE.STYLE]
attack_range = melee[ewID, MELEE.RANGE];
damage = melee[ewID, MELEE.DAMAGE]
image_speed = 1
enemy_inherited()

#region AI Movement Logic
var mi = obj_player
var nearest = instance_nearest(x, y, obj_ranged_enemy)

if my_state != STATE.BLINDED {
if collision_circle(x, y, aggro_range, mi, false, true) {	
	if (collision_line(x, y, mi.x, mi.y, par_pathwall, true, true)) {
		//blocked line of sight
		if spotted && my_state != STATE.PATROL {
			my_state = STATE.ALERT
			last_seen_player = true
		}
	} else {
		aggro_range = base_aggro * 2
		my_state = STATE.ALERT
		if distance_to_object(obj_player) < attack_range * 5 {
			raise = true
		}
		
		if distance_to_object(obj_player) < attack_range * 0.9 {
			my_state = STATE.ATTACK
		}
		spotted = true
	}
	} else {
		if spotted && my_state != STATE.PATROL {
			my_state = STATE.ALERT
		}
	}
}
#endregion

#region State Machine

	switch (my_state) {
	    case STATE.IDLE:
			state_name = "idle"
			enemy_idle()
	    break;
		
		case STATE.ALERT:
			state_name = "alerted"
			if path_alarm == 1 {	
				mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, true);
				path_start(path, enemy_spd, path_action_stop, false);
			}
			sprite_index = run_spr
	    break;
		
		case STATE.ATTACK:
			state_name = "shanking"
			enemy_shank()
	    break;
		
		case STATE.RETREAT:
			state_name = "retreat"
			enemy_retreat()
	    break;
		
		case STATE.PATROL:
			state_name = "patrol"
			enemy_patrol()
	    break;
		
		case STATE.BLINDED:
			state_name = "blinded"
			recalc_path_to(obj_player.x, obj_player.y, enemy_spd)
			sprite_index = run_spr
	    break;	
	}
	
#endregion
event_inherited()
hands_count = melee[ewID, MELEE.HANDED]
attack_style = melee[ewID, MELEE.STYLE]
attack_range = melee[ewID, MELEE.RANGE];
damage = melee[ewID, MELEE.DAMAGE]
raise = false

enemy_inherited()

if instance_exists(obj_enemy_titan) {
var nearest = instance_nearest(x, y, obj_enemy_titan)
enemy_hp = nearest.enemy_hp
}

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
		
		if distance_to_object(obj_player) < 300 {
			if will_dodge {
				is_rolling = true
				roll_dir = point_direction(x, y, obj_player.x, obj_player.y);
				will_dodge = false
			}
			if distance_to_object(obj_player) < attack_range {
			my_state = STATE.ATTACK
			}
		} else {
			will_dodge = true
		}
		spotted = true
	}
	} else {
		if spotted && my_state != STATE.PATROL {
			my_state = STATE.ALERT
		}
	}
}

if is_rolling {
	my_state = STATE.DODGE
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
			enemy_spd = base_spd
			recalc_path_to(obj_player.x, obj_player.y, enemy_spd)
			sprite_index = run_spr
	    break;
		
		case STATE.ATTACK:
			state_name = "shanking"
			enemy_shank()
	    break;
		
		case STATE.DODGE:
			state_name = "dodging"
			enemy_dodgeroll()
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
			enemy_blinded()
	    break;	
	}
#endregion

event_inherited()
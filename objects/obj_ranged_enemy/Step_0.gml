enemy_inherited()
gun_type = weapon[ewID, GUN.TYPE]
firerate = weapon[ewID, GUN.FIRE_DELAY]

#region AI Movement Logic
var mi = obj_player
var nearest = instance_nearest(x, y, obj_ranged_enemy)
var reset_alarm = true

if my_state != STATE.BLINDED
&& my_state != STATE.TELEPORT {
if collision_circle(x, y, aggro_range, mi, false, true) {	
	if (collision_line(x, y, mi.x, mi.y, par_indestructable, true, true)) {
		//blocked line of sight
		if spotted && my_state != STATE.PATROL {
			my_state = STATE.ALERT
			last_seen_player = true
		}
	} else {
		spotted = true
		if obj_player.blind_str > 0 {
			my_state = STATE.HOLD
		} else {
		switch (gun_type) {
			case WeaponType.AR:
				base_spd = 6;
				aggro_range = aggro_range * 3
				if distance_to_object(obj_player) < base_aggro * 2 {
				my_state = STATE.ATTACK
				}
			break;
			
			case WeaponType.Pistol:
				base_spd = 6;
				if distance_to_object(obj_player) < aggro_range/1.5 {
				my_state = STATE.ATTACK
				}
				break;
			
			case WeaponType.LMG:
				aggro_range = base_aggro * 2
				my_state = STATE.ATTACK
				break;
			
			case WeaponType.SMG:
				base_spd = 7
				alarm_interval = 30
				if distance_to_object(obj_player) < aggro_range / 3 {
					my_state = STATE.ATTACK
				}
			break;
			
			case WeaponType.Bolt:
				if distance_to_object(obj_player) < base_aggro/1.5 {
				my_state = STATE.RETREAT
				} else {
					if hurt > 0 {
					my_state = STATE.RETREAT
					} else {my_state = STATE.ATTACK}
				}
			
				if enemy_hp < prev_hp {
				hurt = 120
				}
				prev_hp = enemy_hp
			
				if bolt_cycle {
					audio_play_sound(weapon[ewID, GUN.SFX_SWAPPING], 1, 0, 0.5, 0, 0.7)
					bolt_cycle = false
				}
				enemy_kalash_animation()
			break;
			
			case WeaponType.DMR:
				if distance_to_object(obj_player) < base_aggro * 0.5 {
				my_state = STATE.RETREAT
				} else {
					if hurt > 0 {
					my_state = STATE.RETREAT
					} else {my_state = STATE.ATTACK}
				}
			
				if enemy_hp < prev_hp {
				hurt = 60
				}

				prev_hp = enemy_hp
			break;
			
			case WeaponType.Shotgun:
				alarm_interval = 30
				if distance_to_object(obj_player) < aggro_range {
					my_state = STATE.ATTACK
				}
			
				if bolt_cycle {
					audio_play_sound(weapon[ewID, GUN.SFX_SWAPPING], 2, 0, 0.3, 0, 0.7)
					bolt_cycle = false
				}
				enemy_kalash_animation()
			break;
		}}
	}
	} else {
		if spotted && my_state != STATE.PATROL {
			my_state = STATE.ALERT
		}
	}
}
#endregion

#region Attack logic
if current_mag == 0 {
enemy_reloading()
}
	
if reload == true {
	my_state = STATE.RETREAT
}

#endregion
event_inherited()

#region State Machine
	switch (my_state) {
	    case STATE.IDLE:
			state_name = "idle"
			enemy_idle()
	    break;
		
		case STATE.ALERT:
			state_name = "alerted"
			enemy_chase()
	    break;
		
		case STATE.ATTACK:
			state_name = "attack"
			enemy_shooting()
	    break;
		
		case STATE.HOLD:
			state_name = "hooooooold"
			enemy_hold()
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
		
		case STATE.TELEPORT:
			state_name = "teleporting"
			enemy_teleport()
	    break;
	}
#endregion
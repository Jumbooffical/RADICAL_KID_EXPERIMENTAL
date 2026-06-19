image_speed = 0.5
enemy_spd = base_spd
bullet_type = obj_deflective_enemybullet

if death {
instance_create_depth(x, y, depth, obj_exit)
}
enemy_inherited()
#region AI Movement Logic
var mi = obj_player
var nearest = instance_nearest(x, y, obj_ranged_enemy)

if my_state != STATE.BLINDED {
if collision_circle(x, y, aggro_range, mi, false, true) {	
	if (collision_line(x, y, mi.x, mi.y, par_pathwall, true, true)) {
		//blocked line of sight
		if spotted && my_state != STATE.PATROL {
			my_state = STATE.ATTACK
			last_seen_player = true
		}
	} else {
		aggro_range = base_aggro * 2
		my_state = STATE.ATTACK

		spotted = true
		if obj_player.is_blind && (my_state != STATE.IDLE) {
			my_state = STATE.HOLD
		}
	}
}}

if distance_to_object(obj_m62_unpin) < base_aggro / 3 {
	my_state = STATE.RETREAT
	spotted = true
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
	}
#endregion

event_inherited()
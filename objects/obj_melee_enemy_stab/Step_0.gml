image_speed = 1
if death {
enemy_dying()
}
if death exit;

if enemy_hp <= 0 {
	death = true
}

cooldown--
if gore > 0 {
gore -= 0.003
}

reaction_time = 30
if obj_player.have_flashlight {
reaction_time = 35
}

#region AI Movement Logic
target = obj_player
path_target = obj_player
path_alarm--
if path_alarm == 0 {
	path_alarm = irandom_range(alarm_interval, alarm_interval * 1.5)
}

enemy_speed = base_spd

var mi = obj_player
var nearest = instance_nearest(x, y, obj_ranged_enemy)

if place_meeting(x, y, obj_smoke_discharge) {
	my_state = STATE.BLINDED
	spotted = true
} else {
	if spotted {
	my_state = STATE.ALERT
	}
}

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
		if distance_to_object(obj_player) < aggro_range/6 {
			raise = true
		}
		
		if distance_to_object(obj_player) < aggro_range/8 {
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

if (set_retreatzone) && (!instance_exists(obj_retreat_zone)) {
    instance_create_depth(x, y, depth, obj_retreat_zone);
	set_retreatzone = false
}

if distance_to_object(obj_m62_unpin) < base_aggro {
	my_state = STATE.RETREAT
	spotted = true
}

#endregion

#region Attack logic
#endregion

#region State Machine

	switch (my_state) {
	    case STATE.IDLE:
			state_name = "idle"
			enemy_idle()
	    break;
		
		case STATE.ALERT:
			state_name = "alerted"
			recalc_path_to(obj_player.x, obj_player.y, enemy_spd)
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
			enemy_blinded()
	    break;	
	}
	
if (path_position >= 1) {
path_end() path_finished = true	
}

if path_finished {
sprite_index = idle_spr
}

if sprite_index == walk_spr {
image_speed = 1.5
}

if my_state == STATE.ALERT || STATE.ATTACK || STATE.PATROL || STATE.RETREAT
&& path_alarm == 1 {
path_finished = false
}

#endregion

//Apply weakness
for (var i = 0; i < dot_received; i++) {
	damage_taken = 5 * i
}

//Apply flashlight
if flashlight {
instance_create_depth(x, y, depth, obj_flashlight)
flashlight = false
}

if blinding_flashlight {
var intensity = 2
for (var i = 0; i < intensity; i++) {
	instance_create_depth(x, y, depth, obj_blinding_flashlight)
}
blinding_flashlight = false
}
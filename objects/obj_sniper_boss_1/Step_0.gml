if death {
enemy_dying()
}
if death exit;

if enemy_hp <= 0 {
	death = true
	with (obj_ranged_enemy) {
	death = true
	}
}

if instance_number(obj_ranged_enemy) < 5 {
reinforcement_interval--
}

if reinforcement_interval == 0 {
	with instance_create_depth(x, y, depth, obj_ranged_enemy) {
		sniper_minion = true
		ewID = global.sniper_boss_pool[irandom(array_length(global.sniper_boss_pool) - 1)];
		flashlight = true
		my_state = STATE.ALERT
		alarm_interval = 400
		enemy_hp = 50			
	}
	reinforcement_interval = 900
}

if gun_frame > 0 {
	gun_frame = 0
}

if heat > 0 {
heat -= 0.003
}

if heat > 1 {
heat = 1
}
cooldown--

#region AI Movement Logic
target = obj_player
path_target = obj_player
path_alarm--
if path_alarm == 0 {
	path_alarm = 300
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

if (set_retreatzone) && (!instance_exists(obj_retreat_zone)) {
    instance_create_depth(x, y, depth, obj_retreat_zone);
	set_retreatzone = false
}

if last_seen_player {
	instance_create_depth(mi.x, mi.y, depth, obj_lastseen_zone)
	last_seen_player = false
}

if distance_to_object(obj_m62_unpin) < base_aggro {
	my_state = STATE.RETREAT
	spotted = true
}

if obj_player.is_shooting || collision_circle(x, y, aggro_range, mi, false, true) {
	my_state = STATE.ATTACK
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
			state_name = "alert"
			
			if retreat {
				path_alarm = 2
				retreat = false
			}
			
			enemy_spd = base_spd
			sprite_index = walk_spr
			recalc_path_to(mi.x, mi.y, enemy_spd);
	    break;
		
		case STATE.ATTACK:
			state_name = "attack"
			enemy_shooting()
	    break;
		
		case STATE.RETREAT:
			state_name = "retreat"
			
			if !retreat {
				path_alarm = 2
				retreat = true
			}
			
			sprite_index = run_spr
			enemy_spd = 7
			var dir = point_direction(obj_player.x, obj_player.y, x, y); 
			var dist = 1500

			var avoidx = x + lengthdir_x(dist, dir);
			var avoidy = y + lengthdir_y(dist, dir);
	
			recalc_path_to(avoidx, avoidy, enemy_spd);
			
			aggro_range = base_aggro
			if !reload {
			my_state = STATE.ALERT
				with instance_create_depth(x, y, depth, obj_ranged_enemy) {
					ewID = global.sniper_boss_pool[irandom(array_length(global.sniper_boss_pool) - 1)];
					flashlight = true
					my_state = STATE.ALERT
					alarm_interval = 400
					enemy_hp = 50			
				}
			}
	    break;
		
		case STATE.BLINDED:
			state_name = "blinded"
			enemy_blinded()
	    break;	
	}

if path_finished {
sprite_index = idle_spr
}

if sprite_index == walk_spr {
image_speed = 0.3
}

if sprite_index == run_spr {
image_speed = 1
}

if my_state == STATE.ALERT || STATE.ATTACK || STATE.PATROL || STATE.RETREAT
&& path_alarm == 1 {
path_finished = false
}

if my_state != STATE.ATTACK {
react = false
}
#endregion

// Apply weakness
for (var i = 0; i < dot_received; i++) {
	damage_taken = 5 * i
}

global.tilt_mult = 0
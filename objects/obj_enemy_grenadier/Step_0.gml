enemy_inherited()
image_speed = 1

if death {
enemy_dying()
}
if death exit;

if enemy_hp <= 0 {
	death = true
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
hurt--

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

if nade_cooldown > 0 && spotted {
my_state = STATE.RETREAT
nade_cooldown--
} else {
	if spotted {
	my_state = STATE.ALERT
	}
}

if nade_cooldown <= 0 {
nade_ready = true
}

if collision_circle(x, y, aggro_range, mi, false, true) {	
	if (collision_line(x, y, mi.x, mi.y, par_indestructable, true, true)) {
		//blocked line of sight
		if spotted && my_state != STATE.PATROL {
			my_state = STATE.ALERT
			last_seen_player = true
		}
	} else {
		if distance_to_object(obj_player) < base_aggro / 1.5 {
			my_state = STATE.RETREAT
		}
		
		if nade_ready && nade_cooldown == 0 {
		my_state = STATE.ATTACK
		nade_cooldown = base_cooldown
		nade_ready = false
		}
		spotted = true
}}

if instance_exists(obj_lastseen_zone) {
	path_target = obj_lastseen_zone
}

if place_meeting(x, y, obj_lastseen_zone) {
	path_finished = true
	aggro_range = base_aggro
	my_state = STATE.PATROL
}

if last_seen_player {
	instance_create_depth(mi.x, mi.y, depth, obj_lastseen_zone)
	last_seen_player = false
}

if distance_to_object(obj_m62_unpin) < base_aggro {
	my_state = STATE.RETREAT
	spotted = true
}

enemy_knockback()
#endregion

#region State Machine

	switch (my_state) {
	    case STATE.IDLE:
			raise = false
			state_name = "idle"
			enemy_idle()
	    break;
		
		case STATE.ALERT:
			gun_frame = 0
			raise = true
			state_name = "alerted"
			enemy_spd = base_spd
			recalc_path_to(obj_player.x, obj_player.y, enemy_spd)
			sprite_index = run_spr
	    break;
		
		case STATE.ATTACK:
			gun_frame = 1
			raise = false
			state_name = "attack"
			enemy_throwing()
	    break;
		
		case STATE.HOLD:
			state_name = "hooooooold"
			enemy_hold()
	    break;
		
		case STATE.RETREAT:
			gun_frame = 1
			raise = false
			state_name = "retreat"
			sprite_index = run_spr
			var dir = point_direction(obj_player.x, obj_player.y, x, y); 
			var dist = 1200

			var avoidx = x + lengthdir_x(dist, dir);
			var avoidy = y + lengthdir_y(dist, dir);
	
			recalc_path_to(avoidx, avoidy, enemy_spd);
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
	
if (path_position >= 1) {
path_end() path_finished = true	
}

if path_finished {
sprite_index = idle_spr
}

if sprite_index == walk_spr {
image_speed = 1.5
	if enemy_spd < base_spd {
	image_speed = 0.5
	}
}

if my_state == STATE.ALERT || STATE.ATTACK || STATE.PATROL || STATE.RETREAT
&& path_alarm == 1 {
path_finished = false
}

if my_state != STATE.ATTACK {
react = false
}
#endregion
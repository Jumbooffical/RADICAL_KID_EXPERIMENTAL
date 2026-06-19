image_speed = 0.5
enemy_spd = base_spd

if death {
enemy_dying()
}
if death || obj_player.death exit;
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
#region AI Movement Logic
target = obj_player
path_target = obj_player
path_alarm--
if path_alarm == 0 {
	path_alarm = irandom_range(30, 60)
}

enemy_speed = base_spd
if gun_type == WeaponType.SMG {
	enemy_spd = base_spd * 1.5
}

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
			my_state = STATE.ATTACK
			last_seen_player = true
		}
	} else {
		aggro_range = base_aggro * 2
		if gun_type != WeaponType.SMG {
			my_state = STATE.ATTACK
		}
		
		spotted = true
		if obj_player.is_blind && (my_state != STATE.IDLE) {
			my_state = STATE.HOLD
		}
	}
}
}

if (set_retreatzone) && (!instance_exists(obj_retreat_zone)) {
    instance_create_depth(x, y, depth, obj_retreat_zone);
	set_retreatzone = false
}

if instance_exists(obj_lastseen_zone) {
	path_target = obj_lastseen_zone
}

if last_seen_player {
	instance_create_depth(mi.x, mi.y, depth, obj_lastseen_zone)
	last_seen_player = false
}

if distance_to_object(obj_m62_unpin) < base_aggro / 3 {
	my_state = STATE.RETREAT
	spotted = true
}

enemy_knockback()
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

if my_state != STATE.ATTACK {
react = false
}
#endregion

// Apply weakness
for (var i = 0; i < dot_received; i++) {
	damage_taken = 5 * i
}
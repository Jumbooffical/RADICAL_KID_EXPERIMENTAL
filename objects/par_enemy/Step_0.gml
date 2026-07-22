if (path_position >= 1) {
path_end() path_finished = true	
}
if name == obj_enemy_titan exit;

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

var mi = obj_player

if (set_retreatzone) && (!instance_exists(obj_retreat_zone)) {
    instance_create_depth(x, y, depth, obj_retreat_zone);
	set_retreatzone = false
}

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

if distance_to_object(obj_m62_unpin) < base_aggro / 2 {
	my_state = STATE.RETREAT
	spotted = true
}
enemy_knockback()

for (var i = 0; i < dot_received; i++) {
	damage_taken = 5 * i
}
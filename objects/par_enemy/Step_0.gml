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

if distance_to_object(obj_m62_unpin) < base_aggro / 2 {
	my_state = STATE.RETREAT
	spotted = true
}
enemy_knockback()

if head_alarm > 0 {
	head_alarm--
}

if head_alarm == 1 && !head_immune {
	instance_create_depth(x, y, depth, obj_head)
}
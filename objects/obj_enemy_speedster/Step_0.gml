// Inherit the parent event
if death {
	if instance_exists(obj_enemy_titan) {
	obj_enemy_titan.speed_buff = false
	}
}

event_inherited();

if spotted && !death {
	buff_delay--
}

if buff_delay == 0 {
apply_buff = true
}

if instance_exists(obj_enemy_titan) {
	if apply_buff {
	obj_enemy_titan.speed_buff = true
	audio_play_sound(snd_adrenaline, 1, 0, 7)
	apply_buff = false
	}
		
	if reset_alarm {
	obj_enemy_titan.path_alarm = 3
	reset_alarm = false
	}
}

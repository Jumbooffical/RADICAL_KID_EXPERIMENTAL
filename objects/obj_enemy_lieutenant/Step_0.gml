// Inherit the parent event
if death {
	if instance_exists(obj_enemy_titan) {
	obj_enemy_titan.overclocked = false
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
	obj_enemy_titan.overclocked = true
	obj_enemy_titan.spotted = true
	audio_play_sound(snd_overlocked, 1, 0, 1)
	global.enemy_glow = 0.5
	apply_buff = false
	}
}
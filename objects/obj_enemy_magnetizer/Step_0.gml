// Inherit the parent event
if death {
	if instance_exists(obj_enemy_titan) {
	obj_enemy_titan.magnet_imbued = false
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
	obj_enemy_titan.magnet_imbued = true
	audio_play_sound(snd_heatseek, 1, 0, 7)
	obj_titan_magnetfield.glow = 1
	apply_buff = false
	}
}
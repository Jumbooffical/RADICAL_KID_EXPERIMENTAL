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


if apply_buff {
	if instance_exists(obj_enemy_titan) {
		obj_enemy_titan.magnet_imbued = true
	}
	audio_play_sound(snd_heatseek, 1, 0, 7)
	
	if instance_exists(obj_titan_magnetfield) {
		obj_titan_magnetfield.glow = 1
	}
	obj_enemy_titan.spotted = true
	apply_buff = false
}
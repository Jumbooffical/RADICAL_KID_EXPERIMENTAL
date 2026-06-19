event_inherited();

if spotted && !death {
if instance_exists(obj_enemy_titan) {
	var nearest = instance_nearest(x, y, obj_enemy_titan)
	teleport_cd--
		
	if teleport_cd <= 0 {
		teleport_cd = base_cd
		nearest.start_teleport = true
		}
	}
	
	if start_buff {
		audio_play_sound(snd_smartmag, 1, 0, 3)
		start_buff = false
	}
}

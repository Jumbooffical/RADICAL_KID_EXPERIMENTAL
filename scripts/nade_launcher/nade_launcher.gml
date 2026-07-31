function nade_launcher() {	
	if nade_launcher_cd > 0 {
		nade_launcher_cd--
		
		if instance_exists(obj_entity_dying) {
			obj_entity_dying.reduce_nade_cd = true
		}
	}
	
	if nade_launcher_cd <= 0 {
		var aim = point_direction(x, y, mouse_x, mouse_y);
		if (mouse_check_button_pressed(mb_middle)) {
			with instance_create_depth(x, y, depth, obj_impact_nade) {
				direction = aim
				velocity = 27
			}
			audio_play_sound(snd_nade_launcher, 1, 0, 2, 0, 0.8)
			nade_launcher_cd = duration(0,60)
		}
	}
	nade_launcher_cd = clamp(nade_launcher_cd, 0, duration(0,60))
}
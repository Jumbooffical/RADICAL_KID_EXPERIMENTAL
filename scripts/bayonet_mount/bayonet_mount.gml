function bayonet_mount() {
	
	if melee_cd < 0 {
		if (mouse_check_button_pressed(mb_middle)) {
			melee_cd = melee[ml.knife, MELEE.INTERVAL] * 1.25 / spd_mult		
			audio_play_sound(melee[ml.knife, MELEE.STRIKE_SFX], 2, 0, 1, 0, random_range(0.8, 1))
			
			var aim = point_direction(x, y, mouse_x, mouse_y);
			with instance_create_depth(x, y, depth, obj_overpressure_bullet) {
				damage = other.melee[ml.knife, MELEE.DAMAGE] / 3
				stun = 35
				max_range = other.melee[ml.knife, MELEE.RANGE] * 2
				direction = image_angle
				image_angle = aim
				is_melee = true
				meleeIndex = ml.knife
			}
			
			var knockback = 140
			smooth_recoil_x += lengthdir_x(knockback, aim)
			smooth_recoil_y += lengthdir_y(knockback, aim)
		}
	} else {
		melee_cd--
	}
}
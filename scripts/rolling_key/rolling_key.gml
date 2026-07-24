function rolling_key(_key){
	if (keyboard_check_pressed(_key)) 
	&& (!busy)
	&& (roll_cd <= 0) 
	&& (my_state == state.moving) {
		image_index = 2
		is_rolling = true;
		rolling_timer += 40
		roll_spd = 28 * spd_mult
		roll_cd = base.roll_cd
		my_state = state.rolling
		//if keyboard_check(ord("D")) || keyboard_check(ord("S")) {
		//	obj_camera.rotation += -360; 
		//		} else if keyboard_check(ord("A")) || keyboard_check(ord("W")) { 
		//			obj_camera.rotation += 360 
		//		}
	}
}
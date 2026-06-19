function reloading_key(_key){
	if (is_reloading) {
		is_loading_gun()
	}

	if (keyboard_check_pressed(_key)) && (!busy)
	&& (current_magazine[weapon[wID, GUN.CALIBER_ID]] > 0) 
	&& (player_armed)
	&& !is_reloading {
		
		if input_R_pressed > 0 
		&& quickslot[selected_item, QSlot.Buff_Taped] > 0 {
			taped_reload = true
		} else {
			input_R_pressed = 15
		}
	}
	input_R_pressed--

	if input_R_pressed == 0 {
		if taped_reload {
			gui_frame = 1
			reload_mult = 3
			quickslot[selected_item, QSlot.Buff_Taped]--
			taped_reload = false
		} else {
			gui_frame = 0
		}
		if cursed {
			if quickslot[selected_item, QSlot.LoadedAmmo] < 1
			|| quickslot[selected_item, QSlot.Debuff_AirMag] > 0 {
			start_reloading()
			} 
		} else {
		start_reloading()
		}
	}
}
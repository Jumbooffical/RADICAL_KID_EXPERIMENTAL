function firing_mode_key(_key){
	if keyboard_check_pressed(_key) && (!busy) {	// Switch weapon mode
		full_auto = !full_auto;
	}
}
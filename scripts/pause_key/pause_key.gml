function pause_key(_key){
	if keyboard_check_pressed(_key) {
		obj_pause_manager.paused = !obj_pause_manager.paused
		obj_pause_manager.update_pause()
	}
}
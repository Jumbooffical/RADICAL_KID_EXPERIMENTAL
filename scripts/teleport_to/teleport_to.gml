function teleport_to(_tx, _ty, _spd) {
	if path_alarm == 1 {
	    mp_potential_path_object(path, _tx, _ty, _spd, 3, spr_void);
	    path_start(path, _spd, path_action_stop, true);
		
		//mp_grid_path(global.grid, path, x, y, _tx, _ty, true);
		//path_start(path, _spd, path_action_stop, false);
	}
}
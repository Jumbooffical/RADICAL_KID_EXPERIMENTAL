function recalc_path_to(_tx, _ty, _spd) {
	if path_alarm == 1 {	
		//if fps > 47 {
		//	mp_potential_path_object(path, _tx, _ty, _spd, 3, par_pathwall);
		//	path_start(path, _spd, path_action_stop, true);
		//} else {
			mp_grid_path(global.grid, path, x, y, _tx, _ty, true);
			path_start(path, _spd, path_action_stop, false);
			mp_grid_add_instances(global.grid, par_pathwall, false);
		//}
	}
}
function recalc_path_to(_tx, _ty, _spd) {
	if path_alarm == 1 {	
	mp_potential_path_object(path, _tx, _ty, _spd, 3, par_pathwall);
	path_start(path, _spd, path_action_stop, true);
	}
}
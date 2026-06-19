function enemy_hold(){
	var mi = obj_player
	path_end(); path_finished = true;
	
	if instance_exists(obj_blindfire_spot) 
	&& (!collision_line(x, y, mi.x, mi.y, par_pathwall, true, true)) {
		target = obj_blindfire_spot
		enemy_blindfire()
	}
}
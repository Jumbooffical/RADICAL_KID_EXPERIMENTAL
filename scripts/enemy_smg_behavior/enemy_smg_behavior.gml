function enemy_smg_behavior(){
	var mi = obj_player
	
	// Quickly closing distance and start shooting on effective SMG range
	enemy_spd = 5;
		
	if collision_circle(x, y, aggro_range, mi, false, true) {	
	// When the player enter the cirle, generate line
	if (collision_line(x, y, mi.x, mi.y, par_pathwall, true, true)) {	
		// Set state false when the line is blocked by a wall
		attack = false
		enemy_spd = 5
	} else {
		// Set state true when the line is clear, become cautious
		is_alerted = true
		justrun = true
		attack = true
			if distance_to_object(mi) > aggro_range {
				// Permanently is_alerted the player once it saw mi, fix softlock when mi leave it LoS
				justrun = true
			}
		}
	}

	
	if distance_to_object(mi) < aggro_range/1.5 && (!collision_line(x, y, mi.x, mi.y, par_pathwall, true, true)) {
		attack = true

			enemy_retreat()

		if distance_to_object(mi) < aggro_range/3 {
		enemy_spd = weapon[ewID, 20]
		recalc_path_to(mi.x, mi.y, enemy_spd);

			enemy_retreat()

		}
	} else {
		attack = false
	}

	
	if distance_to_object(mi) < aggro_range/4 && (attack) && (is_alerted) {
		path_end()	
	} else {
		//recalc_path_to(mi.x, mi.y, enemy_spd);
	}}
		
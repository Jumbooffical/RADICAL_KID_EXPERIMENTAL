function pick_up_weapon(){
	// Pick up weapon
	var nearest_weapon = instance_nearest(x, y, par_item);

	if (distance_to_object(nearest_weapon) < weapon_grab_distance) {
	
		// Drop the selected weapon first
		if (holding_weapon()) {
			var gun = instance_create_depth(x, y, 0, weapon[inventory[selected_item, 0], 14]);
			gun.current_ammo = inventory[selected_item, 1];
		}
	
		inventory[selected_item, 0] = nearest_weapon.index;
	
		var select = inventory[selected_item, 0]; 
		alarm[0] = weapon[select, 9];
		
		player_armed = true;
		
		
		with (nearest_weapon) {
			instance_destroy();
		}
	}
}
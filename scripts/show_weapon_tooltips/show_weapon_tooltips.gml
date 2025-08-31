function show_weapon_tooltips(){
	// Show weapon tooltips
	var nearest_weapon = instance_nearest(x, y, par_item);

	with (par_item) {
		show_tooltip = false;
	}

	if (distance_to_object(nearest_weapon) < weapon_grab_distance) {
		with (nearest_weapon) {
			show_tooltip = true;
		}
	}

}
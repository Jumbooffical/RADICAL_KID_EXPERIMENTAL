function display_magazine() {
	
	
	var spacing = 77;
	var nearest = instance_nearest(x, y, mech_mag)

	var start_x = 1132
	var center_y = 350;
	var total_height = (magslot - 1) * spacing;
	var start_y = center_y - total_height / 2;
		
	for (var i = 0; i < magslot; i++) {
	    var y_pos = start_y + (i * spacing);
	    var slot = instance_create_depth(start_x, y_pos, 0, mech_mag);
	    instance_create_depth(start_x, y_pos, 0, obj_ray);
	}
	
	var pocket_y = center_y - ((max_pocket - 1) * spacing) / 2;
	for (var i = 0; i < max_pocket; i++) {
	    var inst = instance_find(obj_store_mag, i);
	    if (inst != noone) {
	        inst.x = 1012;
	        inst.y = pocket_y + i * spacing;
	    }
	}
}
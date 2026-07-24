if distance_to_object(obj_player) < 1500 {
	var radius = 4000;
	var ang = random(360);

	var spawn_x = x + lengthdir_x(radius, ang);
	var spawn_y = y + lengthdir_y(radius, ang);
	
	instance_create_depth(spawn_x, spawn_y, -110, obj_helicopter)
	instance_destroy()
}
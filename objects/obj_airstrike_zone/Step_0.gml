delay--

if timer == 0 {
instance_destroy()
}

if delay < 0 {
	timer--
	var ang = random(360);

	var spawn_x = x + lengthdir_x(radius, ang);
	var spawn_y = y + lengthdir_y(radius, ang);


	if jetfighter > 0 && !instance_exists(obj_jetfighter) {
		with instance_create_depth(spawn_x, spawn_y, -110, obj_jetfighter) {
			direction = point_direction(x, y, other.x, other.y);
			image_angle = direction
		}
		jetfighter--
	}

	if !instance_exists(obj_jetfighter) {
		instance_destroy()
	}
}
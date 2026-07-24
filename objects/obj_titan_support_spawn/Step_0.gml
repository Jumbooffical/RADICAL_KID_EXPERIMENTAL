if outside_cam exit;

if spawn {
	global.titan_support_pool = array_shuffle(global.titan_support_pool);
	for (var i = 0; i < support_num; i++) {	
		var rad = random_range(0, 150);
		var rng_x = random_range(-rad, rad);
		var rng_y = random_range(-rad, rad);

		instance_create_layer(x + rng_x, y + rng_y, "Enemies", global.titan_support_pool[i]);
	}

	spawn = false;
}
if outside_cam exit;
if !spawn {
	for (var i = 0; i < ranger_min; i++) {
		var rad = random_range(0, 100);
		var rng_x = random_range(-rad, rad);
		var rng_y = random_range(-rad, rad);

		instance_create_layer(x + rng_x, y + rng_y, "Enemies", obj_ranged_enemy);
	}

	for (var i = 0; i < melee_min; i++) {
		var rad = random_range(100, 150);
		var rng_x = random_range(-rad, rad);
		var rng_y = random_range(-rad, rad);

		instance_create_layer(x + rng_x, y + rng_y, "Enemies", obj_melee_enemy);
	}
	
	for (var i = 0; i < gren_min; i++) {
		var rad = random_range(0, 50);
		var rng_x = random_range(-rad, rad);
		var rng_y = random_range(-rad, rad);

		instance_create_layer(x + rng_x, y + rng_y, "Enemies", obj_enemy_grenadier);
	}

	spawn = true
}
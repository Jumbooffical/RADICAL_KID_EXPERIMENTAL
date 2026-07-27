function heli_shooting() {
	cooldown--
	if cooldown <= 0 {
		cooldown = 2
	} else {
		exit;
	}
	
	var acc = 7
	var spread = irandom_range(-acc, acc)
	var dist_to_player = point_distance(x, y, obj_player.x, obj_player.y)
		
	dir = point_direction(obj_player.x, obj_player.y, x, y); 
	velocity = lerp(velocity, 6, 0.03)
	steering_spd = 0.05
		
	with instance_create_depth(x, y + 85, depth, par_enemybullet_SCAR) {
		image_angle = other.image_angle + spread

		ignore_collision = true
		velocity = 70
		damage = 10
		
		max_dist = dist_to_player * random_range(0.9, 1.3)
		heli_id = other.id
	}
		
	with instance_create_depth(x, y + 85, depth, obj_casing) {
		left = true
		casing_type =  WeaponType.Bolt
		timer = 180
	}
		
	with instance_create_depth(x, y - 85, depth, par_enemybullet_SCAR) {
		image_angle = other.image_angle + spread

		ignore_collision = true
		velocity = 70
		damage = 10
		
		max_dist = dist_to_player * random_range(0.9, 1.3)
		heli_id = other.id
	}
		
	with instance_create_depth(x, y - 85, depth, obj_casing) {
		left = true
		casing_type =  WeaponType.Bolt
		timer = 180
	}
		
	audio_play_sound(snd_heli_bren, 1, 0, 
	random_range(0.5, 0.6), 0, random_range(0.8, 1))
}
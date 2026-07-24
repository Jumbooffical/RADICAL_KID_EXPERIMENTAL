if outside_cam exit;

if !spawn {
	var base = 0
	var amount = 0
	switch (group) {
		case (SPAWN_GROUP.STANDARD):
			base = 2
			amount = base + floor(global.tier/2)
			for (var i = 0; i < amount; i++) {
			    array_push(universal_enemies, new item(obj_ranged_enemy, all_gun));
			}
		
			base = 1
			amount = base + floor(global.tier/1)
			for (var i = 0; i < amount; i++) {
				array_push(unique_enemies, obj_melee_enemy)
			}

			base = irandom(1)
			amount = base + floor(global.tier/3)
			for (var i = 0; i < amount; i++) {
				array_push(unique_enemies, obj_enemy_grenadier)
			}
		break;
		
		case (SPAWN_GROUP.BREACHER):
			base = 1
			amount = base + floor(global.tier/2)
			for (var i = 0; i < amount; i++) {
			    array_push(universal_enemies, new item(obj_ranged_enemy, all_smg));
			}
			
			base = 1
			amount = base + floor(global.tier/4)
			for (var i = 0; i < amount; i++) {
			    array_push(universal_enemies, new item(obj_ranged_enemy, all_shotgun));
			}
		
			base = 1
			amount = floor(base + (global.tier/1))
			for (var i = 0; i < amount; i++) {
				array_push(unique_enemies, obj_melee_enemy)
			}
		break;
		
		case (SPAWN_GROUP.ASSAULT):
			base = irandom(2)
			amount = base + floor(global.tier/2)
			for (var i = 0; i < amount; i++) {
			    array_push(universal_enemies, new item(obj_ranged_enemy, all_ar));
			}
			
			base = irandom(2)
			amount = base + floor(global.tier/2)
			for (var i = 0; i < amount; i++) {
			    array_push(universal_enemies, new item(obj_ranged_enemy, all_smg));
			}
		
			base = 1
			amount = base + floor(global.tier/3)
			for (var i = 0; i < amount; i++) {
				array_push(unique_enemies, obj_enemy_grenadier)
			}
		break;
		
		case (SPAWN_GROUP.SNIPER):
			base = 2
			amount = base + floor(global.tier/2)
			for (var i = 0; i < amount; i++) {
			    array_push(universal_enemies, new item(obj_ranged_enemy, all_sniper));
			}
			
			base = 1
			amount = base + floor(global.tier/3)
			for (var i = 0; i < amount; i++) {
			    array_push(universal_enemies, new item(obj_ranged_enemy, all_smg));
			}
		
			base = 0
			amount = base + floor(global.tier)
			for (var i = 0; i < amount; i++) {
				array_push(unique_enemies, obj_enemy_assassin)
			}
		break;
		
		case (SPAWN_GROUP.ANGRY_MOB):
			base = irandom_range(10, 20)
			amount = base + floor(global.tier/1)
			for (var i = 0; i < amount; i++) {
				array_push(unique_enemies, obj_melee_enemy)
			}
		break;
	}
	
	for (var i = 0; i < array_length(universal_enemies); i++) {
		var rad = random_range(50, 100);
		var rng_x = random_range(-rad, rad);
		var rng_y = random_range(-rad, rad);
		with instance_create_layer(x + rng_x, y + rng_y * 1.5, "Enemies", other.universal_enemies[i].object) {
			ewID = other.universal_enemies[i].rarity
			current_mag = weapon[ewID, GUN.MAG_SIZE]
		}
	}
	
	for (var i = 0; i < array_length(unique_enemies); i++) {
		var rad = random_range(0, 50);
		var rng_x = random_range(-rad, rad);
		var rng_y = random_range(-rad, rad);
		instance_create_layer(x + rng_x, y + rng_y * 1.5, "Enemies", unique_enemies[i])
	}
	spawn = true
}
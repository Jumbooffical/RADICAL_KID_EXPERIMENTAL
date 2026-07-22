switch (store_type) {
	case SHOP.MOD:
		image_blend = c_aqua	
		markup = 2.25
		
		common_amt = irandom_range(3, 4)
		uncommon_amt = irandom_range(2, 3)
		rare_amt = irandom_range(0, 2)

		common_item = pick_items(global.gun_mod_pool, common_amt, RARITY.COMMON);
		uncommon_item = pick_items(global.gun_mod_pool, uncommon_amt, RARITY.UNCOMMON);
		rare_item = pick_items(global.gun_mod_pool, rare_amt, RARITY.RARE);
	break;
	
	case SHOP.WEAPON:
		image_blend = c_orange
		markup = 2.5
		
		common_amt = irandom_range(3, 3)
		uncommon_amt = irandom_range(3, 3)
		rare_amt = irandom_range(0, 1)
	
		common_item = pick_items(global.weapon_pool, common_amt, RARITY.COMMON);
		uncommon_item = pick_items(global.weapon_pool, uncommon_amt, RARITY.UNCOMMON);
		rare_item = pick_items(global.weapon_pool, rare_amt, RARITY.RARE);
	break;
	
	case SHOP.MEDICAL:
		image_blend = c_lime
		markup = 2
		
		common_amt = irandom_range(3, 3)
		uncommon_amt = irandom_range(3, 3)
		rare_amt = irandom_range(1, 2)
	
		common_item = pick_items(global.medical_pool, common_amt, RARITY.COMMON);
		uncommon_item = pick_items(global.medical_pool, uncommon_amt, RARITY.UNCOMMON);
		rare_item = pick_items(global.medical_pool, rare_amt, RARITY.RARE);
	break;
}


if start {
	for (var i = 0; i < array_length(common_item); i++) {
		var imarkup = random_range(markup, markup + 1)
		with (instance_create_depth(x + 150 * i, y + 50, depth-1, common_item[i].object)) {
			price = floor(100 * imarkup)
			in_shop = true;
		}
	}
	
	for (var i = 0; i < array_length(uncommon_item); i++) {
		var imarkup = random_range(markup, markup + 1)
		with (instance_create_depth(x + 150 * i, y + 200, depth-1, uncommon_item[i].object)) {
			price = floor(250 * imarkup)
			in_shop = true;
		}
	}
	
	for (var i = 0; i < array_length(rare_item); i++) {
		var imarkup = random_range(markup, markup + 1)
		with (instance_create_depth(x + 150 * i, y + 350, depth-1, rare_item[i].object)) {
			price = floor(500 * imarkup)
			in_shop = true;
		}
	}
	
	
	if store_type == SHOP.WEAPON {			
		for (var i = 0; i < array_length(global.ammo_pool); i++) {
			with (instance_create_depth(x + 150 * i, y + 500, depth-1, global.ammo_pool[i].object)) {
				price = floor(100 * random_range(i, i + 0.25))
				in_shop = true;
			}
		}
	}
start = false
}

depth = par_item.depth + 1
if crate_hp <= 0 {
	instance_destroy()
	
	drop_loot(global.gunbox_lootpool, 1)
	
	var uncommon_mod = pick_items(global.gun_mod_pool, 2, RARITY.UNCOMMON)
	if rng < 5 {
		var rare_mod = pick_items(global.gun_mod_pool, 1, RARITY.RARE);
		instance_create_depth(x, y, depth, rare_mod[0].object)
	} 

	for (var i = 0; i < array_length(uncommon_mod); i++) {
		instance_create_depth(x, y, depth, uncommon_mod[i].object)
	}
}
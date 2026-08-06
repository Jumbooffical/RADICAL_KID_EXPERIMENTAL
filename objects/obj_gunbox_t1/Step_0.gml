if crate_hp <= 0 {
	instance_destroy()
	
	drop_loot(global.gunbox_lootpool, 1)
	
	var gun_mod = []
	
	if rng < 1 {
		gun_mod = pick_items(global.gun_mod_pool, 1, RARITY.RARE);
		instance_create_depth(x, y, depth, gun_mod[0].object)
	} else if rng < 15 {
		gun_mod = pick_items(global.gun_mod_pool, 1, RARITY.UNCOMMON);
		instance_create_depth(x, y, depth, gun_mod[0].object)
	} else if rng < 50 {
		gun_mod = pick_items(global.gun_mod_pool, 1, RARITY.COMMON);
		instance_create_depth(x, y, depth, obj_item_rds)
	}
}
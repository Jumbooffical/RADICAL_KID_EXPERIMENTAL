if crate_hp <= 0 {
	instance_destroy()
	
	drop_loot(global.gunbox_lootpool, 1)
	drop_loot(global.gun_mod_pool, 3)
}
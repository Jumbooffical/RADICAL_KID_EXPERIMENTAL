if crate_hp <= 0 {
	instance_destroy()
	
	drop_loot(global.gunbox_lootpool, 3)
}
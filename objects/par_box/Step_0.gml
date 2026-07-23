if crate_hp <= 0 {
	instance_destroy()
	drop_loot(global.supplies_lootpool, 1)
	loot_rarity()
}

function loot_rarity() {
	if rng <= rare_chance {
    return drop_loot(global.rare_lootpool, 1)
	
	} else if rng <= uncommon_chance {
    return drop_loot(global.uncommon_lootpool, 1)

	}
}
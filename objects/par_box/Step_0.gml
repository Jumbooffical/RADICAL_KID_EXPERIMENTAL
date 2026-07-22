if crate_hp <= 0 {
	instance_destroy()
	drop_loot(loot_rarity(), 1)
}

function loot_rarity() {
	if rng <= rare_chance {
    return global.rare_lootpool
	
	} else if rng <= uncommon_chance {
    return global.uncommon_lootpool
	
	} else {
	return global.supplies_lootpool
	}
}
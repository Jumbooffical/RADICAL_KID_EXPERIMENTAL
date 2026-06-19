if crate_hp <= 0 {
	instance_destroy()
	part_particles_create(sys_wood_splash, x, y, pt_wood_splash, irandom_range(15, 20))
	audio_play_sound(snd_box_dead, 10, false, 1, 0, 1);
	drop_loot(loot_rarity(), 1)
}

function loot_rarity() {
	var rng = random_range(0, 100)
	if rng <= rare_chance {
    return global.rare_lootpool
	
	} else if rng <= uncommon_chance {
    return global.uncommon_lootpool
	
	} else {
	return global.standard_lootpool
	}
}
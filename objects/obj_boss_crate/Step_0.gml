image_speed = 0.5
if crate_hp <= 0 {
	instance_destroy()
	instance_create_depth(x, y, depth-1, obj_item_super_medkit)
	
	drop_money(obj_stack_of_cash, 15)
	drop_money(obj_coin, 100)
	drop_money(obj_cash, 50)
	audio_play_sound(snd_coins_spill, 1, 0, 3)
	
	switch (loot_index) {
		case BOSS_LOOT.HEALING:
			amount = 2
			loot = [obj_item_stim_UNDY, obj_item_stim_UNDY]
		break;
		
		case BOSS_LOOT.RARE_GUN:
			amount = 2
			var rare_gun = pick_items(global.weapon_pool, 99, RARITY.RARE)
			for (var i = 0; i < array_length(rare_gun); i++) {
				array_push(loot, rare_gun[i].object)
			}
		break;
		
		case BOSS_LOOT.MUTATION:
			amount = 1
			loot = [obj_item_god_mutagen]
		break;
	}
	
	for (var i = 0; i < amount; i++) {
		instance_create_depth(x, y, depth-1, loot[i])
	}
}
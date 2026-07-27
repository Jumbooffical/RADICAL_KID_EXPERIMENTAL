function loot_pool() {
	randomize()
	weapon_pool()
	global.supplies_lootpool = [
	obj_item_m1911, obj_item_model19, obj_ammoLong
	]
	var med = pick_items(global.medical_pool, 99, RARITY.COMMON)
	var ammo = pick_items(global.ammo_pool, 99, RARITY.COMMON)
	var combined_common = array_concat(med, ammo)
	for (var i = 0; i < array_length(combined_common); i++) {
		array_push(global.supplies_lootpool, combined_common[i].object)
	}
	
	global.uncommon_lootpool = [
	obj_item_m62, obj_item_smokenade,
	obj_item_knife, obj_item_spear, obj_item_axe,
	]
	var common_gun = pick_items(global.weapon_pool, 99, RARITY.COMMON)
	var uncommon_gun = pick_items(global.weapon_pool, 99, RARITY.UNCOMMON) 
	var common_mod = pick_items(global.gun_mod_pool, 99, RARITY.COMMON)
	var uncommon_mod = pick_items(global.gun_mod_pool, 99, RARITY.UNCOMMON)
	var stim = pick_items(global.medical_pool, 99, RARITY.UNCOMMON)
	var uncommon_ammo = pick_items(global.ammo_pool, 99, RARITY.UNCOMMON)
	
	var combined_uncommon = array_concat(common_gun, uncommon_gun, common_mod, uncommon_mod, stim, med)
	for (var i = 0; i < array_length(combined_uncommon); i++) {
		array_push(global.uncommon_lootpool, combined_uncommon[i].object)
	}
	
	global.rare_lootpool = [
	obj_item_delivery
	]
	var rare_gun = pick_items(global.weapon_pool, 99, RARITY.RARE)
	var rare_mod = pick_items(global.gun_mod_pool, 99, RARITY.RARE)
	var rare_stim = pick_items(global.medical_pool, 99, RARITY.RARE)
	var combined_rare = array_concat(rare_gun, rare_mod)
	for (var i = 0; i < array_length(combined_rare); i++) {
		array_push(global.rare_lootpool, combined_rare[i].object)
	}
	
	
	global.gunbox_lootpool = [
	]
	var gunbox = array_concat(common_gun, uncommon_gun)
	for (var i = 0; i < array_length(gunbox); i++) {
		array_push(global.gunbox_lootpool, gunbox[i].object)
	}
}
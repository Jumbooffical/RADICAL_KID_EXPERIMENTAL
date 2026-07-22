image_speed = 0.5
if crate_hp <= 0 {
	instance_destroy()
	instance_create_depth(x, y, depth-1, obj_item_medkit)
	instance_create_depth(x, y, depth-1, obj_item_ifak)
	instance_create_depth(x, y, depth-1, obj_item_antibiotic)
	
	if rng <= 15 {
		instance_create_depth(x, y, depth-1, obj_item_stable_mutagen)
	} 
	
	amount = 2
	var stim = pick_items(global.medical_pool, 99, RARITY.UNCOMMON)
	for (var i = 0; i < array_length(stim); i++) {
		array_push(loot, stim[i].object)
	}
	
	for (var i = 0; i < amount; i++) {
		instance_create_depth(x, y, depth-1, loot[i])
	}
}
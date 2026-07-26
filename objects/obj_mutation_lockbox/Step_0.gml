image_speed = 0.5
if crate_hp <= 0 {
	var stable = choose(obj_item_stable_mutagen, obj_item_experimental_mutagen)
	instance_create_depth(x, y, depth-1, stable)
	
	var gamble = choose(obj_item_roulette_mutagen, obj_item_unstable_mutagen)
	instance_create_depth(x, y, depth-1, gamble)

	var evil = choose(obj_item_forbidden_mutagen, obj_item_stim_HEX)
	instance_create_depth(x, y, depth-1, evil)
	
	if rng < 1 {
	instance_create_depth(x, y, depth-1, obj_item_god_mutagen)
	}
	
	instance_destroy()
}
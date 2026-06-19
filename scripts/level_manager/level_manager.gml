function level_manager() {	
	// DIFFICULTY
	if instance_exists(obj_melee_enemy) {
		if global.level > global.easy_room_amount {
		obj_melee_enemy.tier = 1
		}
	}
}
if crate_hp <= 0 {
	instance_destroy()
	
	var amount = irandom_range(3, 5)
	for (var i = 0; i < amount; i++) {
	instance_create_depth(x, y, depth-1, global.ammo_pool[i].object)
	}
	for (var i = 0; i < amount; i++) {
		instance_create_depth(x, y, depth-1, global.ammo_pool[i].object)
	}
}
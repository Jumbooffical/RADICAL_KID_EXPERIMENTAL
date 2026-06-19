function enemy_dead(){
	var gun = instance_create_depth(x, y, depth, weapon[ewID, GUN.ITEM_OBJECT])
	gun.current_mag = self.current_mag
	instance_destroy();
	instance_create_depth(x, y, depth, obj_dying_ranged)
}
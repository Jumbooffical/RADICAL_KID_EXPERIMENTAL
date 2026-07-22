function enemy_blinded(){
	var furthest = instance_furthest(x, y, par_enemy)
	sprite_index = walk_spr
	if rng < 40 {
		enemy_patrol()
	} else {
		recalc_path_to(furthest.x, furthest.y, base_spd);
	}
}
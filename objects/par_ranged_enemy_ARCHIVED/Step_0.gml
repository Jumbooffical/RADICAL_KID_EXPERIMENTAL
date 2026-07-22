#region AI Movement Logic
var mi = obj_player

if enemy_hp <= 0
{
	var gun = instance_create_depth(x, y, depth, weapon[ewID, GUN.ITEM_OBJECT])
	gun.current_mag = self.current_mag
	instance_destroy();
	instance_create_depth(x, y, depth, obj_dying_ranged)
}

if (attack) || (reload) {
	busy = true;
} else {
	busy = false;
}

// Just run, generate pathfinding to player
if justrun == true && (!busy) {
	mp_potential_path_object(path, mi.x, mi.y, enemy_spd, 3, par_pathwall)
	path_start(path, enemy_spd, path_action_stop, true)

}

enemy_retreat()


if gun_type != WeaponType.SMG {
if collision_circle(x, y, aggro_range, mi, false, true) {	
	if (collision_line(x, y, mi.x, mi.y, par_pathwall, true, true)) {	
		attack = false
		spotted = false
	} else {
		is_alerted = true
		justrun = true
		spotted = true
		enemy_retreat()
		
		if (gun_type != WeaponType.SMG){
		attack = true
		}
		
			if distance_to_object(mi) > aggro_range {
				// Permanently is_alerted the player once it saw mi, fix softlock when mi leave it LoS
				justrun = true
			}
		}
	}
}

if (is_alerted && !instance_exists(obj_retreat_zone)) {
    instance_create_depth(x, y, depth, obj_retreat_zone);
}


#endregion

#region Attack logic
	if attack = true && current_mag > 0 {	
	enemy_shooting()
	}
	
	enemy_reloading()

#endregion

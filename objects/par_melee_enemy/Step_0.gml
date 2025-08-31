//@desc 

#region AI Movement Logic
// Just run, generate pathfinding to player
if justrun = true
{
	mp_potential_path_object(path, obj_player.x, obj_player.y, enemy_spd, 3, par_pathwall)
	path_start(path, enemy_spd, path_action_stop, true)
}
	
// Trigger Chase Event
if chase = false && distance_to_object(obj_player) < aggro_range/2 
{
	chase = true;
}

// Trigger Chase Event when the player get too close
if chase = true && distance_to_object(obj_player) < aggro_range
{
	justrun = true;
}

// If player is more than 400 pixels away, stop Chase
if chase = true && justrun = true && distance_to_object(obj_player) > aggro_range
{
	chase = false
	justrun = false
}

#endregion

#region Attack logic

// Define attack rate
if (attack_rate > 0)
{
    attack_rate -= 1;	
}

// Attack the player when the player go inside their attack range
if (attack_rate <= 0) && distance_to_object(obj_player) < 25
{
    var _inst = instance_create_depth(obj_player.x, obj_player.y, depth, obj_claw);	// Draw the claw on top of the player
    _inst.image_angle = point_direction(x, y, obj_player.x, obj_player.y);						// Claw facing the player
    attack_rate = attack_rate2;
}

#endregion
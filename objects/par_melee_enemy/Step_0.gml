//@desc 

#region AI Movement Logic
// Just run, generate pathfinding to player
if justrun = true
{
	mp_potential_path_object(path, obj_player.x, obj_player.y, enemy_spd, 3, par_pathwall)
	path_start(path, enemy_spd, path_action_stop, true)
}
	
// Trigger is_alerted Event
if is_alerted = false && distance_to_object(obj_player) < aggro_range/2 
{
	is_alerted = true;
}

// Trigger is_alerted Event when the player get too close
if is_alerted = true && distance_to_object(obj_player) < aggro_range
{
	justrun = true;
}

// If player is more than 400 pixels away, stop is_alerted
if is_alerted = true && justrun = true && distance_to_object(obj_player) > aggro_range
{
	is_alerted = false
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
	attack= true
} else {
	attack = false	
}

	if (path_exists(path)) && distance_to_object(obj_player) < 25 {
        path_end(); path_finished = true;;		// Standing still when attack
	}

#endregion

if enemy_hp <= 0
{
	instance_destroy(self);
	instance_create_depth(x, y, depth, obj_dying_melee);
} 
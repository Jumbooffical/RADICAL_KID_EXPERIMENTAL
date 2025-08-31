#region AI Movement Logic
// Just run, generate pathfinding to player
if justrun = true
{
	mp_potential_path_object(path, obj_player.x, obj_player.y, enemy_spd, 3, par_pathwall)
	path_start(path, enemy_spd, path_action_stop, true)
}

// Trigger Chase Event
if chase = false && distance_to_object(obj_player) < aggro_range
{
	chase = true;
}

// Trigger Chase Event and shoot the player when they get in line of sight
if chase = true && collision_circle(x, y, aggro_range, obj_player, false, true)
{	
	// When the player enter the cirle, generate line
	if (collision_line(x, y, obj_player.x, obj_player.y, par_wall, true, true)) 
	{	
		// Set state false when the line is blocked by a wall
		justrun = false
		attack = false
	} else 
	{	
		// Set state true when the line is clear, become cautious
		justrun = true
		attack = true
		aggro_range = aggro_range * 2
			if distance_to_object(obj_player) < aggro_range 
			{	
				// Permanently chase the player once it saw you, fix softlock when you leave it LoS
				justrun = true
			}
	}
}
#endregion

#region Attack logic
if attack = true 
{	
var weaponLength = sprite_get_bbox_right(weapon[EweaponIndex, 2]) - sprite_get_xoffset(weapon[EweaponIndex, 2])
var xOffset = lengthdir_x(weaponLength, image_angle)
var yOffset = lengthdir_y(weaponLength, image_angle)
var EweaponIndex2 = EweaponIndex	// some function require variable to prevent NOTFOUND error

image_angle = point_direction(x, y, obj_player.x, obj_player.y) // Pointing the gun at the player
cooldown = cooldown - 1

// Firing
	if cooldown < 0 
	{	
		// Define firerate, gun sound and shoot bullet
		cooldown = weapon[EweaponIndex, 8]
		audio_play_sound(weapon[EweaponIndex ,6], 10, false, random_range(0.8, 1), 0, random_range(0.8, 1)); // Play shooting sound at random gain and pitch
		with instance_create_depth(x + xOffset, y + yOffset, depth - 1, ammo[EweaponIndex, 0])	// Depth is what allow muzzle to flash, so set it -1
		{	
			// Define gun accuracy
			direction = other.image_angle + random_range(-weapon[EweaponIndex2, 12], weapon[EweaponIndex2, 12])	
			image_angle = direction	
		}
	}
}
#endregion
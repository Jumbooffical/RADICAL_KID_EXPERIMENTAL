/// @desc Moving and Shooting

// Fix the gun to sync with the player arm
if instance_exists(owner)
{
    x = owner.x;
    y = owner.y;
}

#region Shooting
if obj_player.player_armed = true
{
var xOffset = lengthdir_x(weaponLength, image_angle)
var yOffset = lengthdir_y(weaponLength, image_angle)
var weaponIndex2 = weaponIndex	// some function require variable to prevent NOTFOUND error

image_angle = point_direction(x, y, mouse_x, mouse_y)
cooldown = cooldown - 1

// Left mouse function
if (mouse_check_button(mb_left)) && (cooldown < 0) {
	
	// Define firerate
	cooldown = weapon[weaponIndex, 8]
	
	// Play shooting sound at random gain and pitch
	audio_play_sound(weapon[weaponIndex ,6], 10, false, random_range(0.8, 1), 0, random_range(0.8, 1));
	
	// Shoot bullet, depth is what allow muzzle to flash, so set it -1
	with instance_create_depth(x + xOffset, y + yOffset, depth - 1, ammo[weaponIndex, 1]) {	
		direction = other.image_angle + random_range(-weapon[weaponIndex2, 12], weapon[weaponIndex2, 12])	// Define gun accuracy
		image_angle = direction	
		}
	}
}
#endregion
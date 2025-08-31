// Initiates Chase when they get shot
justrun = true;

instance_destroy(other)

if enemy_hp <= 0
{
	instance_create_depth(x, y, depth, weapon[EweaponIndex, 14])
	instance_destroy(self);
} else 
{	
	//invincible = true;
	alarm_set(0, 60); // Set invincible interval
};
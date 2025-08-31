// Initiates Chase when they get shot
justrun = true;

// If enemy hp reaches 0, KILL
if enemy_hp <= 0
{
	instance_destroy(self);
} else {
	
	//invincible = true;
	alarm_set(0, 60); // Set invincible interval
}
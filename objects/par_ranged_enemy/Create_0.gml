WeaponSystemProgram()
EweaponIndex = 0	// Randomized loadout upon spawn

// Enemy stat
enemy_hp = 100;
enemy_spd = 3;		// Movement speed
aggro_range = 600;
enemy_dmg = 20;		// Base attack damage
cooldown = 20

path = path_add()

// State
chase = false;		// Stop idling and start chasing animation
justrun = false;	// Variable
attack = false;		// Start attacking animation

dir = point_direction(other.x, other.y, x, y);
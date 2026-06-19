
depth = 0
// Enemy stat
enemy_hp = 100;
enemy_spd = 3;		// Movement speed
aggro_range = 400;
enemy_dmg = 20;		// Base attack damage
attack_rate2 = 60;	// Enemy attack interval, 60 = 1 sec

path = path_add()

// State
is_alerted = false;		// If true, is_alerted the player
justrun = false;	
attack = false;

attack_rate = 0;	// Initial attack rate to define atk rate logic

dir = point_direction(other.x, other.y, x, y);

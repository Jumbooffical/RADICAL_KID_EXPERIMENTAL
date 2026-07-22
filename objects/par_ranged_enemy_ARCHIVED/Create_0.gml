WeaponData()
randomize()
ewID = irandom(4)	
depth = 0
// Enemy stat
maxhp = 350 enemy_hp = maxhp
base_spd = 3;
enemy_spd = base_spd;		// Movement speed
aggro_range = 600;



enemy_acc = weapon[ewID, GUN.DEVIATION]

cooldown = 20
current_mag = weapon[ewID, GUN.MAG_SIZE]
reload_timer = 0

path = path_add()

// State
is_alerted = false;		// Stop idling and start chasing animation
justrun = false;	// Variable
attack = false;		// Start attacking animation
reload = false;
retreat = false;
busy = false;
spotted = false;

gun_type = weapon[ewID, GUN.TYPE]

dir = point_direction(other.x, other.y, x, y);
to_me = point_direction(obj_player.x, obj_player.y, x, y);
to_wall = point_direction(par_indestructable.x, par_indestructable.y, x, y);


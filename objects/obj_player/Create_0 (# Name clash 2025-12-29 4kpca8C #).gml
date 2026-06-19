WeaponData() 
MeleeData()
GrenadeData()

depth = 0
// Stats
my_spd = 6;		  	// Player base speed

current_spd = my_spd;    // In game movement speed

hp = 1000;
maxhp = max(0,hp);
mult = 0;

// State
player_armed = false;	// Currently unarmed
busy = false;

is_moving = false;
is_rolling = false;

is_reloading = false;
select_mag = false;
did_select_mag = false;

is_shooting = false;
is_aiming = false;
open_inventory = false;
is_moving_backward = false;

// Define rolling
rolling_timer = 0;
roll_spd = 12;

// Ammo reserve
current_magazine[Caliber.Medium] = 11	// Medium
current_magazine[Caliber.Light] = 0		// Light
current_magazine[Caliber.Heavy] = 0		// Heavy
current_magazine[Caliber.Long] = 0		// Long
current_magazine[Caliber.Shell]	= 0		// Shell

// inventory Selection
selected_item = 0;
quickslot_amount = 3;
last_slot = 0;

// inventory
enum QSlot {
Gun,
LoadedAmmo,
Melee,
Nade,
Mag
}

quickslot[0, QSlot.Gun] = noone;	//store gun
quickslot[0, QSlot.LoadedAmmo] = 0;		//store loaded ammo
quickslot[0, QSlot.Melee] = 0;
quickslot[0, QSlot.Nade] = noone;
quickslot[0, QSlot.Mag] = noone;

quickslot[1, QSlot.Gun] = noone;
quickslot[1, QSlot.LoadedAmmo] = 0;
quickslot[1, QSlot.Melee] = 0;
quickslot[1, QSlot.Nade] = noone;
quickslot[1, QSlot.Mag] = noone;

quickslot[2, QSlot.Gun] = noone;
quickslot[2, QSlot.LoadedAmmo] = 0;
quickslot[2, QSlot.Melee] = noone;
quickslot[2, QSlot.Nade] = noone;
quickslot[2, QSlot.Mag] = noone;
meleeIndex = 0;

quickslot[3, QSlot.Gun] = noone;
quickslot[3, QSlot.LoadedAmmo] = 0;
quickslot[3, QSlot.Melee] = 0;
quickslot[3, QSlot.Nade] = noone;	//store nade
quickslot[3, QSlot.Mag] = noone;
nadeIndex = 0;

//quickslot[4, 0] = noone;
//quickslot[4, 1] = 0;
//quickslot[4, 2] = noone;

gun_inst = instance_create_layer(x, y, "Instances", weapon[0, GUN.OBJECT]);	// Create the gun on the player's hand
gun_inst.owner = id;	// So the gun knows who owns it
gun_inst.persistent = true;
gun_type = noone

recoil_spd = weapon[par_gun.weaponIndex, GUN.MOVE_PENALTY];	// recoil spd
full_auto = false


// Set hp bar scale and coordinate
hpbar_w = 400;
hpbar_h = 120;
hpbar_x = (700) - (hpbar_w/2);
hpbar_y = 670;

// Reload bar ui
rlbar_w = 18;
rlbar_h = 240;
rlbar_x = 767
rlbar_y = 288


// Actual stats
var wID = par_gun.weaponIndex
weapon_grab_distance = 75;
current_accuracy = 0
cooldown = 0

quickslot[selected_item, QSlot.Mag] = MagType.Normal
mag_size = weapon[wID, GUN.MAG_SIZE]
done_selection = false
done_storing = false
free_mag = false

// Set initial interval

reload_timer = 0;
max_reload = 0

melee_cd = 0
roll_cd = 0
hold_pressed = 0
flash_duration = 0

dir = point_direction(other.x, other.y, x, y);
mouse_dir = point_direction(x, y, mouse_x, mouse_y);
mouse_dist = point_distance(x, y, mouse_x, mouse_y);

gun_frame = 0;
gun_frame_speed = 2;   // we use manual animation
aiming_offsety = 0
aiming_offsetx = 15
max_offset = 12

// Prevent duplicate player
if (instance_number(obj_player) > 1) {
	instance_destroy();
}

ewID = 0
WeaponSystemProgram()
my_spd = 4;				// Player speed

gun_inst = instance_create_layer(x, y, "Instances", weapon[0, 13]);	// Create the gun on the player's hand
gun_inst.owner = id;	// So the gun knows who owns it

player_armed = false	// Currently unarmed

hp = 100;
maxhp = max(0,hp);

// Inventory Selection
selected_item = 0;
inventory_size = 4;

// inventory
inventory[0, 0] = noone;
inventory[0, 1] = noone;
inventory[1, 0] = noone;
inventory[1, 1] = noone;
inventory[2, 0] = noone;
inventory[2, 1] = noone;
inventory[3, 0] = noone;
inventory[3, 1] = noone;
inventory[4, 0] = noone;
inventory[4, 1] = noone;

// Set hp bar scale and coordinate
hpbar_w = 400;
hpbar_h = 120;
hpbar_x = (700) - (hpbar_w/2);
hpbar_y = ystart + 420;

weapon_grab_distance = 16;
// Check if the player wield the weapon
if (instance_exists(gun_inst) && player_armed)
{
    gun_inst.x = x;	 // Set gun coordinate
    gun_inst.y = y;
    gun_inst.visible = true; // show the gun if armed
}
else if (instance_exists(gun_inst))
{
    gun_inst.visible = false; // hide the gun if not armed
}

// When hp reaches 0, game over
if (hp <= 0)
{
	room_restart()
}

if other.hp >= other.maxhp
{
	other.hp = max(0, other.maxhp)		// Prevent hp overflow when heal above maxhp
}

// Movement and collide wall
var _xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
move_and_collide(_xinput * my_spd, _yinput * my_spd, par_wall, 4, 0, 0, my_spd, my_spd);

// Inventory controll
if (keyboard_check_pressed(ord("1"))) {set_current_weapon(0);}
else if (keyboard_check_pressed(ord("2"))) {set_current_weapon(1);}
else if (keyboard_check_pressed(ord("3"))) {set_current_weapon(2);}
else if (keyboard_check_pressed(ord("4"))) {set_current_weapon(3);}
else if (keyboard_check_pressed(ord("5"))) {set_current_weapon(4);}

	if (mouse_wheel_up()) {
		if (selected_item < inventory_size) {
			set_current_weapon(selected_item+1); // Move to next slot
		} else {
			set_current_weapon(0);	// Warp slot when reach dead end
		}
	} else if (mouse_wheel_down()) {
		if (selected_item > 0) {
			set_current_weapon(selected_item-1);
		} else {
			set_current_weapon(inventory_size);
		}
	}
	
// Pickup weapon
if (keyboard_check_pressed(ord("F"))) {
	pick_up_weapon()
}

//// Shoot
//if (holding_weapon()) {
//	if (mouse_check_button(mb_left))) {
//		shooting()
//	}
//}
	
if death player_dying()

if death exit;
player_default_stats()

gun_heat = quickslot[selected_item, QSlot.Heat]
if quickslot[selected_item, QSlot.Heat] > 0 {
	quickslot[selected_item, QSlot.Heat] -= 0.003
}
quickslot[selected_item, QSlot.Heat] = clamp(quickslot[selected_item, QSlot.Heat], 0, 1)

if (instance_exists(gun_inst) && player_armed) {
    gun_inst.x = x;
    gun_inst.y = y;
    gun_inst.visible = true;
}
else if (instance_exists(gun_inst)) {
    gun_inst.visible = false;
}

// Disable other action while busy, prevent losing ammo while reloading
if (is_reloading) || (is_shooting) || (is_aiming) || (is_rolling) {
	busy = true	
} else {
	busy = false
}

#region CONTROL
player_controls()
#endregion

#region // Define State behavior
// Moving Backward
if ((image_xscale == 1 && keyboard_check(key_left)) 
|| (image_xscale == -1 && keyboard_check(key_right)))
&& (!is_rolling)
{
	my_state = state.walking_backward
} 

// Set walking sprite if moving
if (is_aiming) && (my_state == state.moving) {
    my_state = state.walking
}

if (is_rolling) {
    sprite_index = spr_player_rolling;
    image_speed = 0.65;

    // Stop when animation reaches the last frame
    if (image_index >= sprite_get_number(sprite_index) - 1) {
        is_rolling = false
    }
}

#endregion

var UNDY = obj_inventory.inv.findItemById(spr_stim_UNDY);
if (hp <= 0) && UNDY_stim_timer <= 0 && (UNDY = -1) {
my_state = state.death
}

// State Machine
switch (my_state) {
	case state.idle:
	state_name = "idle"
	idle()
	break;
	
	case state.moving:
	state_name = "moving"
	moving()
	break;
	
	case state.rolling:
	state_name = "rolling"
	rolling()
	break;
	
	case state.walking:
	state_name = "walking"
	walking()
	break;
	
	case state.walking_backward:
	state_name = "walking_backward"
	walking_backward()
	break;
	
	case state.lost_balance:
	state_name = "WOOOOAAAAAAAA!!!!!!"
	lost_balance()
	break;
	
	case state.death:
	state_name = "death"
	death = true
	break;
}

// Serialization syncing
if save_alarm > 0 {
	save_alarm--
}
if save_alarm == 1 {
	savegame()
}
if curse_alarm > 0 {
	curse_alarm--
}
if curse_alarm == 1 {
	cursed = true
}

if global.level > 1 {
	time_elapsed++
}

if keyboard_check_pressed(ord("N")) {
	death = true
}
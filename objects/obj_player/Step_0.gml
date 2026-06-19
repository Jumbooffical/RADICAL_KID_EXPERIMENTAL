if my_state == state.death {
player_dying()
}
if (death) exit;
player_default_stats()


if (instance_exists(gun_inst) && player_armed)
{
    gun_inst.x = x;
    gun_inst.y = y;
    gun_inst.visible = true;
}
else if (instance_exists(gun_inst))
{
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
flash_duration--;

// When hp reaches 0, game over
if (hp <= 0) {
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
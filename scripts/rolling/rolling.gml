function rolling() {
	var _xinput = keyboard_check(key_right) - keyboard_check(key_left);
	var _yinput = keyboard_check(key_down) - keyboard_check(key_up);
		
	var dir = point_direction(0, 0, _xinput, _yinput);
	var hsp = lengthdir_x(roll_spd, dir);
	var vsp = lengthdir_y(roll_spd, dir);
        
	// Split movement into smaller steps to avoid skipping through walls
	var steps = ceil(max(abs(hsp), abs(vsp))); // number of sub-steps
	var move_x = hsp / steps;
	var move_y = vsp / steps;

	for (var i = 0; i < steps; i++) {
	    // Stop rolling if a wall is ahead
	    if (!place_meeting(x + move_x, y + move_y, par_pathwall)) {
	        x += move_x;
	        y += move_y;
	    } else {
	        break;
	    }
	}
	// Gradually slow down rolling
	roll_spd *= 0.95
}
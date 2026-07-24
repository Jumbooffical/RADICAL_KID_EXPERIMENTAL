function rolling() {
	var _xinput = keyboard_check(key_right) - keyboard_check(key_left);
	var _yinput = keyboard_check(key_down) - keyboard_check(key_up);
		
	var dir = point_direction(0, 0, _xinput, _yinput);
	var hsp = lengthdir_x(roll_spd, dir);
	var vsp = lengthdir_y(roll_spd, dir);
        
	var steps = ceil(max(abs(hsp), abs(vsp)));
	var move_x = hsp / steps;
	var move_y = vsp / steps;

	for (var i = 0; i < steps; i++) {
	    if (!place_meeting(x + move_x, y + move_y, par_pathwall)) {
	        x += move_x;
	        y += move_y;
	    } else {
	        break;
	    }
	}
	roll_spd *= 0.95
			
	if (image_xscale == 1 && keyboard_check(key_left)) {
		image_xscale = -1
	}
	if (image_xscale == -1 && keyboard_check(key_right)) {
		image_xscale = 1
	}
}
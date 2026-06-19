image_index = 0
color = c_white

//var mx = device_mouse_x_to_gui(0);
//var my = device_mouse_y_to_gui(0);
var mx = mouse_x;
var my = mouse_y;

var rx = x
var ry = y
var rxx = x + 33
var ryy = y + 50

var rx1 = x + 290
var ry1 = y
var rxx1 = x + 323
var ryy1 = y + 50

if (point_in_rectangle(mx, my, rx, ry, rxx, ryy)) {	// LEFT
	image_index = 1
	if mouse_check_button_released(mb_left) {
		if (option > 0) {
			option--
		} else {
			option = max_option
		}
	}
}
if (point_in_rectangle(mx, my, rx1, ry1, rxx1, ryy1)) {	// RIGHT
	image_index = 2
	if mouse_check_button_released(mb_left) {
		if (option < max_option) {
			option++
		} else {
			option = 0
		}
	}
}

switch (button_id) 
{
	case 0: // Screenshake
		max_option = 3
		switch (option) {
			case 0:
			text = "None"
			global.shake_mult = 0
			break;
			
			case 1:
			text = "Normal x1"
			global.shake_mult = 1
			break;
			
			case 2:
			text = "Intense x2"
			global.shake_mult = 2
			break;
			
			case 3:
			text = "Brainfuck x4"
			color = c_red
			global.shake_mult = 4
			break;
		}
	break;
	
	case 1: // Camera tilting while aiming
		max_option = 2
		switch (option) {
			case 0:
			text = "None"
			global.tilt_mult = 0
			break;
			
			case 1:
			text = "Little x0.5"
			global.tilt_mult = 0.5
			break;
			
			case 2:
			text = "Normal x1"
			global.tilt_mult = 1
			break;
		}
	break;
	
	case 2: // Master Volume
		max_option = 10
		for (var i = 0; i < 10; i++) {
			global.master_volume = option / 10
			text = string(option * 10) + "%"
		}
	break;
}
image_xscale = 2
text = ""
color = c_white

max_option = 0
default_option = 0
switch (button_id) 
{
	case 0: // Screenshake
		default_option = 1
	break;
	
	case 1: // Camera tilting while aiming
		default_option = 2
	break;
	
	case 2: // Master Volume
		default_option = 5
	break;
}
option = default_option

global.shake_mult = 1
global.tilt_mult = 1
global.master_volume = 1
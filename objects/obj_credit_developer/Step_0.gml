
if !obj_pause_manager.paused exit;

interval--
if interval == 0 {
	interval = 60
}

switch (sprite_index) {
	case spr_credit_jumbo:
		var angle = 10
		if interval < 30 {
			image_angle = angle
		} else {
			image_angle = -angle
		}
	break;
	
	case spr_credit_sandvich:
		image_angle += 3
	break;
}
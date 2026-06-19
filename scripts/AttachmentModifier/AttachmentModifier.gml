function AttachmentModifier() {	
	if allow_optic {
	switch (quickslot[selected_item, QSlot.Optic]) {
		case spr_rds:
			optic_shape = obj_rds_dot
			stat.ads_speed = stat.ads_speed * 1.5
			obj_reticle.sprite_index = spr_rds_reticle
		break;
		
		case spr_lrs:
			optic_shape = obj_dot
			stat.ads_speed = stat.ads_speed * 0.50
			magnify = 4
			obj_reticle.sprite_index = spr_PMII_reticle
		break;
		
		case spr_acog:
			optic_shape = obj_dot
			stat.ads_speed = stat.ads_speed * 0.75
			magnify = 3
			obj_reticle.sprite_index = spr_ACOG_reticle
		break;
	}}
	
	if allow_grip {
	switch (quickslot[selected_item, QSlot.Grip]) {
		case spr_vertical_grip:
			recoil_control = 0.7
		break;
		
		case spr_grip_w_flashlight:
			recoil_control = 0.8
			mult_react_time = 1.25
			have_flashlight = true
		break;
		
		case spr_chainsaw_grip:
			deviation = 1.9
		break;	
	}}
	
	if allow_mount {
	switch (quickslot[selected_item, QSlot.Mount]) {
		case spr_blue_laser:
			have_laser = true
			deviation = 1.2
		break;
		
		case spr_shuriken_printer:
			shuriken_printer()
		break;
		
		case spr_nade_launcher:
			var aim = point_direction(x, y, mouse_x, mouse_y);
			if (mouse_check_button_pressed(mb_middle)) {
			with instance_create_depth(x, y, depth, obj_impact_nade) {
		        direction = aim
				velocity = 27
		    }}
		break;
	}}
	
	if allow_barrel {
	switch (quickslot[selected_item, QSlot.Barrel]) {
		case spr_suppressor:
			have_suppressor = true
			noise = 0.5
			gun_heat = quickslot[selected_item, QSlot.Heat] * 1.5
		break;
		
		case spr_burst_amplifier:
			burst_amplifier()
		break;
				
		case spr_kunai_launcher:
			kunai_underbarrel_launcher()
		break;
	}}
}
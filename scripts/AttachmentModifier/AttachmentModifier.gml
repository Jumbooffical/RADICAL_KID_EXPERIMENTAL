function AttachmentModifier() {	
	if allow_optic {
	switch (quickslot[selected_item, QSlot.Optic]) {
		case spr_rds:
			stat.ads_speed = stat.ads_speed * 1.5
			obj_reticle.sprite_index = spr_rds_reticle
		break;
		
		case spr_lrs:
			stat.ads_speed = stat.ads_speed * 0.50
			magnify = 2.5
			obj_reticle.sprite_index = spr_PMII_reticle
		break;
		
		case spr_acog:
			stat.ads_speed = stat.ads_speed * 0.75
			magnify = 2
			obj_reticle.sprite_index = spr_ACOG_reticle
		break;
	}}
	
	if allow_grip {
	switch (quickslot[selected_item, QSlot.Grip]) {
		case spr_vertical_grip:
			recoil_control = recoil_control + 0.3
		break;
		
		case spr_skeletal_grip:
			recoil_control = recoil_control + 0.2
			stat.ads_speed = stat.ads_speed * 1.25
		break;		
		
		case spr_grip_w_flashlight:
			recoil_control = recoil_control + 0.2
			mult_react_time = mult_react_time + 0.25
			have_flashlight = true
		break;
		
		case spr_chainsaw_grip:
			deviation = deviation - 0.9
		break;	
	}}
	
	if allow_mount {
	switch (quickslot[selected_item, QSlot.Mount]) {
		case spr_blue_laser:
			have_laser = true
			deviation = deviation - 0.2
		break;
		
		case spr_shuriken_printer:
			shuriken_printer()
		break;
		
		case spr_nade_launcher:
			nade_launcher()
		break;
		
		case spr_knife_mount:
			bayonet_mount()
		break;
	}}
	
	if allow_barrel {
	switch (quickslot[selected_item, QSlot.Barrel]) {
		case spr_suppressor:
			have_suppressor = true
			noise = 0.5
			heat_mult = heat_mult * 1.5
		break;
		
		case spr_burst_amplifier:
			burst_amplifier()
		break;
				
		case spr_kunai_launcher:
			kunai_underbarrel_launcher()
		break;
	}}
}
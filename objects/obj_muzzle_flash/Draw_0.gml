/// @description Alter

if obj_player.quickslot[obj_player.selected_item, QSlot.Buff_Overclocked] > 0 {
overclock = 3
} else {
overclock = 1
}

// Inherit the parent event
event_inherited();
WeaponData()

// Draw brilho
gpu_set_blendmode(bm_add);
	var recoil =  weapon[obj_player.wID, GUN.RECOIL]
	var v_radius = 20 * recoil * overclock;
	var v_alpha = 0.015 * recoil * overclock;
	
	
	draw_set_alpha(v_alpha);
	draw_circle_color(x, y, v_radius, make_color_rgb(255, 238, 53), c_black, 0);
	
	var v_radius = 55;
	var v_alpha = 0.2 + random_range(0, 0.002);
	
	draw_set_alpha(v_alpha);
	draw_circle_color(x, y, v_radius, make_color_rgb(255, 237, 178), c_black, 0);
	
	draw_set_alpha(1);

	uls_set_light_alpha(self, 0.2 * random_range(0.93, 1.06))

gpu_set_blendmode(bm_normal);
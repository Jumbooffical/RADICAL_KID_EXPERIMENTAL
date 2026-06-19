/// @description Alter

// Inherit the parent event
event_inherited();
WeaponData()

// Draw brilho
gpu_set_blendmode(bm_add);
	var recoil =  weapon[wID, GUN.RECOIL]
	var v_radius = 40 * recoil
	var v_alpha = clamp(0.015 * recoil, 0.2, 0.7)
	
	draw_set_alpha(v_alpha);
	draw_circle_color(x, y, v_radius, make_color_rgb(255, 255, 0), c_black, 0);
	
	var v_radius = 95;
	var v_alpha = 0.2 + random_range(0, 0.002);
	
	draw_set_alpha(v_alpha);
	draw_circle_color(x, y, v_radius, make_color_rgb(255, 255, 0), c_black, 0);
	
	draw_set_alpha(1);

	uls_set_light_alpha(self, 0.3 * random_range(0.93, 1.06))

gpu_set_blendmode(bm_normal);
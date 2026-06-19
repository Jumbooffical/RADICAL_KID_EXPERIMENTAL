function wallhack_shader() {
	if global.wallhack_alpha < 0.2 exit;
	shader_set(shd_wallhack);

	var u_res    = shader_get_uniform(shd_wallhack, "u_resolution");
	var u_grid   = shader_get_uniform(shd_wallhack, "u_grid");
	var u_thick  = shader_get_uniform(shd_wallhack, "u_thickness");
	var u_offset = shader_get_uniform(shd_wallhack, "u_offset");
	var u_strength = shader_get_uniform(shd_wallhack, "u_strength");
	
	shader_set_uniform_f(u_res, display_get_width(), display_get_height());

	shader_set_uniform_f(u_grid, 16);

	shader_set_uniform_f(u_thick, 0.005);

	shader_set_uniform_f(u_offset, current_time * 0.00005, 0);
	
	shader_set_uniform_f(u_strength, global.wallhack_alpha);
	
	if !instance_exists(obj_enemy_recon) {
		global.wallhack_alpha = lerp(global.wallhack_alpha, 0, 0.0015)
	} else {
		if obj_enemy_recon.hurt > 1 {
			shader_set_uniform_f_array(
			    shader_get_uniform(shd_wallhack, "u_rgb"),
				[1, 0, 0]
			);
		} else {
			shader_set_uniform_f_array(
			    shader_get_uniform(shd_wallhack, "u_rgb"),
				[0.0, 1.0, 0.15]
			);
		}
	}
}
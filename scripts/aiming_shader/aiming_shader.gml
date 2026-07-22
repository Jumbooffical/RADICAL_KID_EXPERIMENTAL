function aiming_shader() {
    shader_set(shd_aim);

    // Mouse UV
    var _mx = device_mouse_x_to_gui(0) / display_get_gui_width();
    var _my = device_mouse_y_to_gui(0) / display_get_gui_height();

    shader_set_uniform_f_array(
        shader_get_uniform(shd_aim, "mouse_uv"),
        [_mx, _my]
    );
	
	shader_set_uniform_f(
    shader_get_uniform(shd_aim, "fog_strength"),
    aiming_shd_str
	);

    // Aspect ratio
    shader_set_uniform_f(
        shader_get_uniform(shd_aim, "aspect"),
        display_get_gui_width() / display_get_gui_height()
    );

    // Resolution (for blur size)
    shader_set_uniform_f_array(
        shader_get_uniform(shd_aim, "resolution"),
        [display_get_gui_width(), display_get_gui_height()]
    );

    draw_surface(application_surface, 0, 0);
    shader_reset();
}
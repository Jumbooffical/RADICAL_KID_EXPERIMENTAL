function blur_shader(){
shader_set(shd_blur);

shader_set_uniform_f_array(
    shader_get_uniform(shd_blur, "resolution"),
    [display_get_gui_width(), display_get_gui_height()]
);

shader_set_uniform_f(
    shader_get_uniform(shd_blur, "blur_strength"),
    global.ringing * 11
);


draw_surface(application_surface, 0, 0);
shader_reset();
}
function epic_feedback(){
// Draw GUI Event
shader_set(shd_glow);
shader_set_uniform_f(shader_get_uniform(shd_glow, "fog_strength"), glow);
shader_set_uniform_f_array(
    shader_get_uniform(shd_glow, "fog_color"),
    [1.2, 0, 1.2]
	//[2, 0, 0]
);

draw_surface(application_surface, 0, 0);

shader_reset();
}
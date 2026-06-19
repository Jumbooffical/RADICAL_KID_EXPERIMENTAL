function oval_shader(r, g, b, value, shader){
// Draw GUI Event
shader_set(shader);
shader_set_uniform_f(shader_get_uniform(shader, "fog_strength"), value);
shader_set_uniform_f_array(
    shader_get_uniform(shader, "fog_color"),
	[r, g, b]
);

draw_surface(application_surface, 0, 0);
	shader_reset();
}
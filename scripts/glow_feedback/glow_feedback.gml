function glow_feedback(r, g, b, value, decay) {
if value > 0 {
value -= decay
}	
	
shader_set(shd_glow);
shader_set_uniform_f(shader_get_uniform(shd_glow, "fog_strength"), value);
shader_set_uniform_f_array(
    shader_get_uniform(shd_glow, "fog_color"),
	[r, g, b]
);

draw_surface(application_surface, 0, 0);

shader_reset();
return value;
}
function enter_smoke(){
// Draw GUI Event
shader_set(shd_fog);
shader_set_uniform_f(shader_get_uniform(shd_fog, "fog_strength"), obj_player.blind_str);
shader_set_uniform_f_array(
    shader_get_uniform(shd_fog, "fog_color"),
    [0.7, 0.7, 0.7]
);

draw_surface(application_surface, 0, 0);
	shader_reset();

}
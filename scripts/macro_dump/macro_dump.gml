#macro cam0 view_camera[0]
#macro cx camera_get_view_x(cam0)
#macro cy camera_get_view_y(cam0)
#macro cw camera_get_view_width(cam0) * 1.15
#macro ch camera_get_view_height(cam0) * 1.15

#macro outside_cam (x < cx || x > cx + cw || y < cy || y > cy + ch)

#macro pride_month current_month = 6
#macro uv sprite_get_uvs(sprite_index, image_index)
#macro rainbow_shader {\
	shader_set(shd_rainbow);\
	global._time += 0.02\
	shader_set_uniform_f(global._uniUV, uv[0], uv[2]);\
	shader_set_uniform_f(global._uniSpeed, global._speed);\
	shader_set_uniform_f(global._uniTime, global._time);\
	shader_set_uniform_f(global._uniSaturation, global._saturation);\
	shader_set_uniform_f(global._uniBrightness, global._brightness);\
	shader_set_uniform_f(global._uniSection, global._section);\
	shader_set_uniform_f(global._uniMix, global._mix);\
}
var lerp_str = 0.2
smooth_recoil_x = lerp(smooth_recoil_x, 0, lerp_str)
smooth_recoil_y = lerp(smooth_recoil_y, 0, lerp_str)

var max_range = 111
smooth_recoil_x = clamp(smooth_recoil_x, -max_range, max_range)
smooth_recoil_y = clamp(smooth_recoil_y, -max_range, max_range)

var col = c_white
col = c_red
var range = 0.5
if smooth_recoil_x < range
&& smooth_recoil_x > -range {
	col =  c_white
}

draw_sprite_ext(sprite_index, image_index, x + smooth_recoil_x, y + smooth_recoil_y, 1, 1, 0, col, 1)


var shadow_y = 0
if sprite_index == spr_titan_death {
	shadow_y = 30
}
draw_shadow(sprite_index, 15, 20, 32 + shadow_y, -10, image_xscale, image_yscale * 0.7, 0, 0.4)

draw_self()
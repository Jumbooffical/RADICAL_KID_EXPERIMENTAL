all_scale = lerp(image_xscale, 0.85 * scale, 0.13)

image_xscale = all_scale
image_yscale = all_scale

image_alpha = random_range(0.5, 0.7)
image_blend = c_purple

var mi = obj_player
var pull = 0
var nearest = instance_nearest(x, y, obj_enemy_titan)
var dir = point_direction(mi.x, mi.y, x, y)

if place_meeting(x, y, mi) && !mi.is_rolling {
	pull = 0.25
}

mi.smooth_knockback_x += lengthdir_x(pull, dir)
mi.smooth_knockback_y += lengthdir_y(pull, dir)

x = nearest.x
y = nearest.y

if nearest.death {
	instance_destroy()
}
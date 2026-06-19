all_scale -= 0.05

image_xscale = all_scale
image_yscale = all_scale
image_blend = c_purple
image_alpha = 0.3

if all_scale <= 0 {
	instance_destroy()
}

var nearest = instance_nearest(x, y, obj_titan_magnetfield)
x = nearest.x
y = nearest.y

if !instance_exists(nearest) {
	instance_destroy()
}
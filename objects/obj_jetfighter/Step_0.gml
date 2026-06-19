x += lengthdir_x(velocity, image_angle);
y += lengthdir_y(velocity, image_angle);

timer--
image_alpha = 0.5

if timer == 0 {
instance_destroy()
}

image_xscale = scale
image_yscale = scale

if collision_circle(x, y, bomb_radius, obj_airstrike_zone, false, true) {
	with instance_create_depth(x, y, depth, obj_m62_unpin) {
	visible = false
	timer = 20
	velocity = 0
	}
}
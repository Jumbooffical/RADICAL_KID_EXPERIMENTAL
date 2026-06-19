if !instance_exists(obj_hyper_magnetizer_boss) exit;
visible = true
image_xscale = 5
image_yscale = 5

x += lengthdir_x(velocity, image_angle);
y += lengthdir_y(velocity, image_angle);

if place_meeting(x, y, par_indestructable) {
	velocity = 0
	pull = lerp(pull, 0, 0.1)
	bomb_timer--
	
	if bomb_timer < 0 {
	instance_create_depth(x, y, depth, obj_explosion)
	instance_destroy()
	}
	
} else {
	velocity = lerp(velocity, 40, 0.5)
}

var mi = obj_player
var dir = point_direction(mi.x, mi.y, x, y)

mi.smooth_knockback_x += lengthdir_x(pull, dir)
mi.smooth_knockback_y += lengthdir_y(pull, dir)

if place_meeting(x, y, par_indestructable) {
	if screenshake {
	obj_camera.shake_str += 70
	screenshake = false
	}
}
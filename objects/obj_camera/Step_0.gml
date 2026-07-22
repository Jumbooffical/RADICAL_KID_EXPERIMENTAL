

camW = base_camW * zoom
camH = base_camH * zoom

var realpx = obj_player.x;
var realpy = obj_player.y;
	
var _mx = device_mouse_x(0);
var _my = device_mouse_y(0);	
var left = point_direction(_mx, _my, px, py)
var right = point_direction(px, py, _mx, _my)	
	
var cam = view_camera[0];
	
if (instance_exists(obj_player)) {
    var target_x = lerp(px, _mx, camera_zoom);
    var target_y = lerp(py, _my, camera_zoom);

    x = lerp(x, target_x, ads);
    y = lerp(y, target_y, ads);
	
	px = lerp(px,realpx,.2)
	py = lerp(py,realpy,.2)
	
	// Apply screenshake
    if (shake_str > 0.05) {
        shake_x = random_range(-shake_str, shake_str) * 2 * global.shake_mult;
        shake_y = random_range(-shake_str, shake_str) * global.shake_mult;
		tilt_angle = random_range(-shake_str, shake_str) * global.shake_mult;
        shake_str *= shake_decay;
    } else {
        shake_x = 0;
        shake_y = 0;
        shake_str = 0;
    }
	
	var target_dir = (obj_player.image_xscale == 1) ? right : left;

	smooth_dir = angle_lerp(smooth_dir, target_dir, 0.05);
	
	cam_angle = lerp(cam_angle, rotation, 0.1);
	camera_set_view_pos(cam, x - camW * 0.5 + shake_x, y - camH * 0.5 + shake_y);
	camera_set_view_angle(cam, cam_angle);
	camera_set_view_size(cam, camW, camH)
	ads = 0.5 * (1 - global.ringing);
	camera_zoom = base_zoom
	
	if (obj_player.is_aiming) {
		camera_set_view_pos(cam, x - camW * 0.5, y - camH * 0.5);
		camera_set_view_angle(cam, (sin(degtorad(smooth_dir)) * 5 * global.tilt_mult) + tilt_angle)
		obj_reticle.image_angle = (sin(degtorad(smooth_dir)) * 65 * global.tilt_mult) + tilt_angle;
		
		ads = obj_player.stat.ads_speed * (1 - global.ringing)
		camera_zoom = base_zoom * obj_player.magnify
	}
}

if outside_cam {
	instance_deactivate_object(obj_common_enemy_spawn)
} else {
	instance_activate_object(obj_common_enemy_spawn)
}

function angle_lerp(a, b, t) {
    return a + angle_difference(b, a) * t;
}

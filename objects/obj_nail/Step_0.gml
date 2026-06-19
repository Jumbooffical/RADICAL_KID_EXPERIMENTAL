if !instance_exists(obj_hyper_magnetizer_boss) exit;
image_index = 0
visible = true
velocity = lerp(velocity, 0, 0.03)

x += lengthdir_x(velocity, image_angle);
y += lengthdir_y(velocity, image_angle);

if velocity == 0 && place_meeting(x, y, obj_magnetize_field) {
	follow_player = true
	dir = point_direction(x, y, obj_player.x, obj_player.y)
}

if follow_player && glow <= 0 {
	image_blend = c_red
	follow_delay--
	if follow_delay < 0 {
	image_angle = dir
	velocity = lerp(velocity, 35, 0.2)
	x += lengthdir_x(velocity, dir);
	y += lengthdir_y(velocity, dir);
	} else {
	image_angle = image_angle + sin(current_time * 0.05) * 8;
	}
} else {
	if obj_hyper_magnetizer_boss.my_state == HMB_STATE.ATTACK3 {
		image_angle = lerp(image_angle, reverse, 0.04)
	} else {
		reverse = image_angle + 180
	}
	
	if place_meeting(x, y, par_indestructable) 
	&& obj_hyper_magnetizer_boss.my_state != HMB_STATE.ULT {
		velocity = 0
		
		if obj_hyper_magnetizer_boss.my_state != HMB_STATE.ATTACK3 {
		glow = 0
		}
	}
}
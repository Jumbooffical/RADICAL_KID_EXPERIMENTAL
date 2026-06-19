
image_index = 1;
text_float++
image_alpha = 1
var mi = obj_player
image_angle += irandom_range (5 , 10)

// Prevent penetration to screen boarder and wall
var _p = 64;
if !point_in_rectangle(x, y, -_p, -_p, room_width + _p, room_height + _p) {
	my_state = bullet_state.DESTROYED
}

if distance_to_object(par_gun) > weaponLength / 5 {
visible = true	
}
	
var px = path_get_x(path_index_current, path_position + 0.01);
var py = path_get_y(path_index_current, path_position + 0.01);


switch (my_state) {
	case bullet_state.NORMAL:
		x += lengthdir_x(velocity, direction);
		y += lengthdir_y(velocity, direction);
		
		if place_meeting(x, y, par_indestructable) {
			my_state = bullet_state.DESTROYED
		}
	break;
	
	case bullet_state.SMART:
		image_angle = point_direction(x, y, px, py);
		mp_potential_path_object(path, mouse_x, mouse_y, velocity, 3, par_indestructable)
		path_start(path, velocity, path_action_stop, true)
		
		if collision_circle(mouse_x, mouse_y, 10, self, true, false) {
		instance_destroy()
		}
		
		image_alpha -= 0.01
		if image_alpha < 0 {
		instance_destroy()
		}
	break;
	
	case bullet_state.HEATSEEK:
		image_angle = point_direction(x, y, px, py);
	
		var enemy = instance_nearest(x, y, obj_ranged_enemy)
		
		if instance_exists(obj_ranged_enemy) {
			mp_potential_path_object(path, enemy.x, enemy.y, velocity, 3, par_indestructable)
			path_start(path, velocity, path_action_stop, true)
		} else {
			instance_destroy()
		}
	break;
	
	case bullet_state.DESTROYED:
		with (obj_player) {
		part_type_direction(pt_bullet_trail, 0, 360, 0, 0);
		part_particles_create(sys_bullet_trail, other.x, other.y, pt_bullet_trail, 5)
		}
		instance_destroy();
	break;
}
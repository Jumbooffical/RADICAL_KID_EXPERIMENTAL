velocity = weapon[wID, GUN.VELOCITY]
image_index = 1;

if (path_index_current != -1) {
    var px = path_get_x(path_index_current, path_position + 0.01);
    var py = path_get_y(path_index_current, path_position + 0.01);

    image_angle = point_direction(x, y, px, py);
}


// Prevent penetration to screen boarder and wall
var _p = 64;
if (!point_in_rectangle(x, y, -_p, -_p, room_width + _p, room_height + _p)) 
{
	instance_destroy();
	with (obj_player) {
	part_type_direction(pt_bullet_trail, 0, 360, 0, 0);
	part_particles_create(sys_bullet_trail, other.x, other.y, pt_bullet_trail, 5)
	}
}

if distance_to_object(par_gun) > weaponLength / 5 {
visible = true	
}

with (obj_player) {
if quickslot[selected_item, QSlot.Buff_Overclocked] > 0 {
		part_particles_create(sys_fire_gui, other.x, other.y, pt_bullet_trail, irandom_range(3, 5))
		other.velocity = 50
	}
}
	
var enemy = instance_nearest(x, y, par_ranged_enemy)
mp_potential_path_object(path, enemy.x, enemy.y, velocity, 3, par_wall)
path_start(path, velocity, path_action_stop, true)
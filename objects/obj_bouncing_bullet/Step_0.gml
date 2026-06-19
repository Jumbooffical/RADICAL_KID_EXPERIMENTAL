velocity = weapon[wID, GUN.VELOCITY]
image_index = 1;
// Prevent penetration to screen boarder and wall
var _p = 64;
if (!point_in_rectangle(x, y, -_p, -_p, room_width + _p, room_height + _p)) || ricochet_count == 10
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

if (place_meeting(x + lengthdir_x(velocity, direction),
                  y + lengthdir_y(velocity, direction),
                  par_wall))
{
    // Horizontal collision
    if (place_meeting(x + lengthdir_x(velocity, direction), y, par_wall)) {
        direction = 180 - direction + irandom_range(-10, 10);
    }

    // Vertical collision
    if (place_meeting(x, y + lengthdir_y(velocity, direction), par_wall)) {
        direction = -direction + irandom_range(-10, 10);
    }
	ricochet_count++
}

image_angle = direction
x += lengthdir_x(velocity, image_angle);
y += lengthdir_y(velocity, image_angle);
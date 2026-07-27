timer--
if fire_trail {
	damage = weapon[wID, GUN.DAMAGE] / 4.5
}

image_index = 1;
var mi = obj_player

x += lengthdir_x(velocity, image_angle);
y += lengthdir_y(velocity, image_angle);

// Prevent penetration to screen boarder and wall
if timer < 0 {
	var _p = 64;
	if !point_in_rectangle(x, y, -_p, -_p, room_width + _p, room_height + _p) {
	    instance_destroy();
	}
	if !ignore_collision && place_meeting(x, y, par_indestructable) {
		instance_destroy();
	}
}

if distance_to_object(obj_ranged_enemy) > 70 {
visible = true	
}

if instance_exists(obj_sniper_boss) {
visible = false
}

if fire_trail {
part_particles_create(mi.sys_fire_gui, x, y, mi.pt_bullet_trail, irandom_range(3, 5))
}

sprite_index = BULLET_medium
if velocity > 55 {
	sprite_index = BULLET_long
}

if ignore_collision {
	if distance_to_object(heli_id) >= max_dist {
		instance_destroy()
	}
}
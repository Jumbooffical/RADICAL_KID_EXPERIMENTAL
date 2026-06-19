// Prevent penetration to screen boarder and wall
var _p = 64;

timer--

if timer < 0 {
if (!point_in_rectangle(x, y, -_p, -_p, room_width + _p, room_height + _p) || place_meeting(x, y, par_indestructable))
|| (distance_to_object(obj_explosion) > global.radius * 3)
{
	instance_destroy();
	with (obj_player) {
	part_type_direction(pt_bullet_trail, 0, 360, 0, 0);
	part_particles_create(sys_bullet_trail, other.x, other.y, pt_bullet_trail, 5)
	}
}}

x += lengthdir_x(velocity, image_angle);
y += lengthdir_y(velocity, image_angle);

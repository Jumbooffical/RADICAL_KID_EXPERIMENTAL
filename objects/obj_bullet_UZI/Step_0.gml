/// @desc movement

image_index = 1;

x += lengthdir_x(ammo[1, 3], image_angle);
y += lengthdir_y(ammo[1, 3], image_angle);

// Prevent penetration to screen boarder and wall
var _p = 64;
if (!point_in_rectangle(x, y, -_p, -_p, room_width + _p, room_height + _p) || place_meeting(x, y, par_wall)) 
{
    instance_destroy();
}
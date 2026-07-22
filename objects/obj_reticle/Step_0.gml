//visible = obj_player.is_aiming;
var px = obj_player.x;
var py = obj_player.y;

var _mx = device_mouse_x(0);
var _my = device_mouse_y(0);

var radius = point_distance(px, py, _mx, _my);
var dir = point_direction(px, py, _mx, _my);

dir = point_direction(px, py, _mx, _my);

shake_angle *= shake_decay;

var angle = 0
angle = random_range(-shake_angle, shake_angle) / (obj_player.recoil_control)

shake_decay = 0.85
if obj_player.gun_type == WeaponType.Pistol {
shake_decay = 0.6
angle = -shake_angle
if obj_player.image_xscale == 1 {
	angle = shake_angle
}}

offset = (angle * (obj_player.stat.recoil - 3))
var final_dir = dir + offset;

//x = px + lengthdir_x(radius, final_dir);
//y = py + lengthdir_y(radius, final_dir);

var target_x = px + lengthdir_x(radius, final_dir);
var target_y = py + lengthdir_y(radius, final_dir);
x = lerp(x, target_x, obj_player.stat.ads_speed * 1.5);
y = lerp(y, target_y, obj_player.stat.ads_speed * 1.5);

image_alpha = 0

if obj_player.is_aiming {
image_alpha = 1
} else {
x = px
y = py
}

blocked = false
if collision_line(obj_player.x, obj_player.y, x, y, par_indestructable, false, true) {
image_alpha = 0.2
blocked = true
}
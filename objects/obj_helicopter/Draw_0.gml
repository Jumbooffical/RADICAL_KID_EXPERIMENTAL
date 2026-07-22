
wing_spd += 45

if start_attacking && flash_alarm == 1 {
var white_amt = 0.8;
shader_set(shd_muzzle);
shader_set_uniform_f(shader_get_uniform(shd_muzzle, "u_white"), white_amt);
}

draw_sprite_ext(spr_helicopter_wings, 0, x, y, image_xscale, image_yscale, wing_spd, c_gray, image_alpha/2)
draw_self()

shader_reset()

if mystate == STATE.RETREAT exit;
var target = point_direction(x, y, obj_player.x, obj_player.y);
image_angle += angle_difference(target, image_angle) * steering_spd;

flash_alarm--
if flash_alarm == 0 {
	flash_alarm = 3
}
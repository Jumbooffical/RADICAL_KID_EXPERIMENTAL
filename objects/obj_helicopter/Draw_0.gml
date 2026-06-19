wing_spd += 45
draw_sprite_ext(spr_helicopter_wings, 0, x, y, scale, scale, wing_spd, c_gray, 0.15)
draw_self()

if mystate == STATE.RETREAT exit;
var target = point_direction(x, y, obj_player.x, obj_player.y);
image_angle += angle_difference(target, image_angle) * steering_spd;

draw_circle(x, y, retreat_zone, true)
draw_circle(x, y, deploy_zone, true)
draw_text(x, y + 20, state_name)
draw_text(x, y, velocity)
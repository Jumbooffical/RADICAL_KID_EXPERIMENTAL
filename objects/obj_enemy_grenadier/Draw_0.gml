draw_shadow(sprite_index, global.grayness, global.shadow_x, global.shadow_y, global.all_offset, 
image_xscale * global.shadow_xscale, global.shadow_yscale, global.shadow_angle, global.shadow_alpha)
draw_self();

if death exit;

draw_text_blend(x + 10,y + 10, nade_cooldown, c_red)

draw_text(x + 10,y + 30, react)
draw_set_colour(c_white)

if global.pathfinding_debug {
draw_set_colour(c_red)
draw_circle(x, y, aggro_range, true)
draw_circle(x, y, base_aggro, true)
draw_line(x, y, obj_player.x, obj_player.y)
	
draw_set_colour(c_white);
draw_text(x + 20,y + 50, state_name)
draw_text(x - 50,y + 70, "path alarm:") draw_text(x + 50,y + 70, path_alarm)

draw_set_colour(c_lime);
draw_path(path, x, y, true)
}

var mi = obj_player
var dir = direction

if (my_state == STATE.IDLE) {
	dir = starting_dir
}

if my_state == STATE.RETREAT {
	dir = point_direction(obj_player.x, obj_player.y, x, y)
}

if (my_state == STATE.ATTACK) {
	dir = point_direction(x, y, obj_player.x, obj_player.y)
}

var flip = (dir > 90 && dir < 270) ? -1 : 1;		// If pointing the gun at the left, flip it

if dir > 90 && dir < 270 {
	image_xscale = -1
} else {
	image_xscale = 1
}

if spotted {
gun_bob_time += gun_bob_speed;
var target = sin(gun_bob_time) * gun_bob_amount;
smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15);
}

enemy_swing_animation()

if !spotted exit;
painbar = lerp(painbar, (enemy_hp/maxhp) * hpbar_w, 0.02)
hpbar_w = 150;
hpbar_h = 80;
hpbar_x = (x) - (hpbar_w/2);
hpbar_y = y - 120;

draw_sprite_stretched(health_bar_bg, 0, hpbar_x, hpbar_y, hpbar_w, hpbar_h);
draw_sprite_stretched(health_bar_damaged, 0, hpbar_x, hpbar_y, painbar, hpbar_h);
draw_sprite_stretched(health_bar, 0, hpbar_x, hpbar_y, (enemy_hp/maxhp) * hpbar_w, hpbar_h);
// Inherit the parent event
event_inherited();

//draw_text(x + 10,y + 50, state_name)
//draw_text(x + 10,y + 70, "interval: "+string(state_interval))
//draw_text(x + 10,y + 90, "cd: "+string(cooldown))

if lazer {
	var max_dist = 2000;
	var mi = obj_player
	var aim = point_direction(x, y, mi.x, mi.y)
	
	var x2 = x + lengthdir_x(max_dist, aim);
	var y2 = y + lengthdir_y(max_dist, aim);

	draw_set_colour(c_red)
	draw_set_alpha(random_range(0.7, 1))
	draw_line_width(x, y, x2, y2, 3)
	draw_set_colour(c_white)
	draw_set_alpha(1)
}
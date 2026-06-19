draw_self()
draw_circle(x, y, aggro_range, true)
draw_line(x, y, obj_player.x, obj_player.y)

var dir = point_direction(x, y, obj_player.x, obj_player.y);
if (is_alerted = false) {
	dir = 0	
}

var flip = (dir > 90 && dir < 270) ? -1 : 1;		// If pointing the gun at the left, flip it

draw_sprite_ext(weapon[ewID, GUN.SPRITE], image_index, x, y, 1, flip, dir, c_white, 1);

draw_text(x + 10,y + 10,enemy_hp)

if dir > 90 && dir < 270 {
	image_xscale = -1
} else {
	image_xscale = 1
}

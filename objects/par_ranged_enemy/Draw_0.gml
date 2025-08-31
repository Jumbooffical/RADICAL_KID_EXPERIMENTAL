draw_self()
draw_circle(x, y, aggro_range, true)
draw_line(x, y, obj_player.x, obj_player.y)

var flip = (obj_player.x > x) ? 1 : -1;		// If pointing the gun at the left, flip it

draw_sprite_ext(weapon[EweaponIndex, 2], image_index, x, y, 1, flip, image_angle, c_white, 1);
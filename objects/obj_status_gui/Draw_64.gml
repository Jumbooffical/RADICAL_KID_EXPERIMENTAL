if trigger {

draw_self()
var mi = obj_player;

var col1 = 0
var col2 = 0
col1 = c_maroon
col2 = c_red
if buff {
	col1 = c_green
	col2 = c_lime
}

if mouse_hovered {
	var box_w = 240;
	var box_h = 120;
	var padding = 10;

	var tx = x + 16;
	var ty = y + 16;
		
	var text_w = box_w - padding * 2;
	var desc_y = ty + padding + 30;
	var desc_h = string_height_ext(desc, -1, text_w);
	var note_h = string_height_ext(note, -1, text_w);
	var note_y = desc_y + desc_h + 10;

	var square_y = (desc_y + desc_h + note_h + 10) / 2

	tx = clamp(tx, 0, display_get_gui_width() - box_w);
	ty = clamp(ty, 0, display_get_gui_height() - box_h);

	draw_set_alpha(random_range(0.4, 0.5));
	draw_set_color(col1);
	draw_rectangle(tx, ty, tx + box_w, ty + 35, false);
		
	draw_set_color(col2);
	draw_rectangle(tx, ty + 35, 
	tx + box_w, 
	square_y + box_h, false);

	draw_set_alpha(1);
	draw_set_color(c_white);

	draw_text(tx + padding, ty + padding, name);
	draw_text_ext(tx + padding, desc_y, desc, -1, text_w);

	var scale = 0.75

	draw_text_ext_transformed(
		tx + padding,
		note_y,
		note,
		-1,
		text_w,
		scale,
		scale,
		0
	)
} else {
draw_text_ext_transformed(x - 10, y + 15, duration, -1, 120, 0.75, 0.75, 0)
}

trigger = false
}
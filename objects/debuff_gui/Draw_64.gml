var mi = obj_player;
debuff_list = [];
debuff_description()

for (var i = 0; i < array_length(debuff_list); i++) {
	var d = debuff_list[i];
	var spacing = 55;
	
	var draw_x = x - i * spacing;
	var draw_y = y;

	draw_sprite(d.sprite, 0, draw_x, draw_y);

	var w = sprite_get_width(d.sprite);
	var h = sprite_get_height(d.sprite);

	var left   = draw_x - w/2;
	var right  = draw_x + w/2;
	var top    = draw_y - h/2;
	var bottom = draw_y + h/2;

	if (point_in_rectangle(mx, my, left, top, right, bottom)) {
		var box_w = 240;
		var box_h = 120;
		var padding = 10;

		var tx = draw_x + 16;
		var ty = y + 16;
		
		var text_w = box_w - padding * 2;
		var desc_y = ty + padding + 30;
		var desc_h = string_height_ext(d.desc, -1, text_w);
		var note_h = string_height_ext(d.note, -1, text_w);
		var note_y = desc_y + desc_h + 10;

		var square_y = (desc_y + desc_h + note_h + 10) / 2

		tx = clamp(tx, 0, display_get_gui_width() - box_w);
		ty = clamp(ty, 0, display_get_gui_height() - box_h);

		draw_set_alpha(random_range(0.7, 0.9));
		draw_set_color(c_maroon);
		draw_rectangle(tx, ty, tx + box_w, ty + 35, false);
		
		draw_set_color(c_red);
		draw_rectangle(tx, ty + 35, 
		tx + box_w, 
		square_y + box_h, false);

		draw_set_alpha(1);
		draw_set_color(c_white);

		draw_text(tx + padding, ty + padding, d.name);
		draw_text_ext(tx + padding, desc_y, d.desc, -1, text_w);

		var scale = 0.75

		draw_text_ext_transformed(
			tx + padding,
			note_y,
			d.note,
			-1,
			text_w,
			scale,
			scale,
			0
		);
		
		var new_item = array_length(debuff_list) > prev_item;
		if (new_item) {
			var inst = instance_create_depth(draw_x, draw_y, depth, gui_afterimage);
			inst.sprite_index = d.sprite;
			new_item = false;
		}
	} else {
	//draw_text(right, bottom, d.duration);
	draw_text_ext_transformed(left, bottom, d.duration, -1, 120, 0.75, 0.75, 0)
	}
}
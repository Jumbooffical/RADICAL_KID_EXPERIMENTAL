if (obj_player.open_inventory) {
	sprite_index = spr_mapcanvas
    draw_self();

    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    var cols = max_column;
    var rows = ceil(inv._max_inventory_slots / cols);

    var width_half  = display_get_gui_width() / 2;
    var height_half = display_get_gui_height() / 2;

    x = width_half;
    y = height_half;

    var sprite_width_padding = 69;
    var item_number_half = inv._max_inventory_slots / 2;
    var xx = width_half - (sprite_width_padding * floor(item_number_half));
    var yy = height_half;

    var _items = inv.getAll();


    for (var i = 0; i < inv._max_inventory_slots; i++) {

        var col = i mod cols;
        var row = i div cols;

        var slot_x = xx + col * sprite_width_padding;
        var slot_y = yy + row * sprite_width_padding;

        draw_sprite(spr_inv_slot, 0, slot_x, slot_y);

        if (i < array_length(_items) && _items[i] != undefined) {

            if (!(is_dragging && i == mouse_selected_inv)) {
                draw_sprite(_items[i].sprite, 0, slot_x, slot_y);
            }

            if (_items[i].hover) {
                draw_sprite(spr_selection, 0, slot_x - 32, slot_y - 32);
            }
        }
    }


    if (is_dragging && mouse_selected_inv != -1) {

        var drag_item = _items[mouse_selected_inv];

        if (drag_item != undefined) {

            draw_set_alpha(0.85);
            draw_sprite(
                drag_item.sprite,
                0,
                mx,
                my
            );
            draw_set_alpha(1);
        }
    }


    var tr_x = 1308;
    var tr_y = 31;
    var tr_offsety = 25;

    draw_sprite(ammoLight, 0, tr_x, tr_y);
    draw_text(tr_x, tr_y + tr_offsety, obj_player.current_magazine[Caliber.Light]);

    draw_sprite(ammoMed, 0, tr_x - 50, tr_y);
    draw_text(tr_x - 50, tr_y + tr_offsety, obj_player.current_magazine[Caliber.Medium]);

    draw_text(tr_x / 2 - 70, tr_y + tr_offsety, "selected_inv:");
    draw_text(tr_x / 2 + 70, tr_y + tr_offsety, selected_inv);

    draw_text(tr_x / 2 - 70, tr_y + tr_offsety + 20, "mouse_sel_inv:");
    draw_text(tr_x / 2 + 70, tr_y + tr_offsety + 20, mouse_selected_inv);

    draw_text(tr_x / 2 - 70, tr_y + tr_offsety + 40, "context_open?:");
    draw_text(tr_x / 2 + 70, tr_y + tr_offsety + 40, context_open);
}

if (context_open) {
    var w = 120;
    var h = 60;
	var spacing = 90
	var items = inv.getAll();
	
	if (selected_inv >= 0 && selected_inv < array_length(items)) {	
	var item = items[selected_inv];
	
		draw_set_alpha(random_range(0.5, 0.7))
	    draw_set_colour(c_grey);
	    draw_rectangle(context_x, context_y + 5, context_x + w * 3, context_y + h * 3, false);

	    draw_set_colour(c_black);
	    draw_rectangle(context_x, context_y, context_x + w * 3, context_y + 35, false);
		draw_set_alpha(1)

	    draw_set_colour(c_white);
	    draw_text(context_x + 20, context_y + 8, item.name);
		draw_text_ext_transformed(context_x + 20, context_y + 45, item.description,
		-1, w * 3 - 10, 1, 1, 0)
		
		textbox_list = [];
		if string_pos("[Snipe]", item.description) > 0 {
		//array_push(textbox_list, "[Snipe]: \nMust be triggered by reticle effect to deal damage")
		}
		
		for (var i = 0; i < array_length(textbox_list); i++) {
			draw_text_ext_transformed(context_x + 20, context_y + 120 + i * spacing, textbox_list[i],
			-1, w * 3 - 10, 1, 1, 0)
		}
	}
}
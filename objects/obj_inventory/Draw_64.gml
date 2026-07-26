
var tr_x = 1308;
var tr_y = 31;
var tr_offsety = 25;

if (obj_player.open_inventory) {
	sprite_index = spr_mapcanvas
    draw_self();

    var cols = max_column;
    var rows = ceil(inv._max_inventory_slots / cols);

    var width_half  = display_get_gui_width() / 2;
    var height_half = display_get_gui_height() / 2;

    x = width_half;
    y = height_half;

    var sprite_width_padding = 69;
	var grid_width = (cols - 1) * sprite_width_padding;
	var xx = width_half - grid_width / 2;
	var yy = height_half - grid_width / 2;

    var _items = inv.getAll();

    for (var i = 0; i < inv._max_inventory_slots; i++) {

        var col = i mod cols;
        var row = i div cols;

        var slot_x = xx + col * sprite_width_padding;
        var slot_y = yy + row * sprite_width_padding;

        draw_sprite(spr_inv_slot, 0, slot_x, slot_y);

        if (i < array_length(_items) && _items[i] != undefined) {

            if (!(is_dragging && i == mouse_selected_inv)) {
				var co = c_white
				var no = 0
				co = c_white
				no = 0
				#region ATTACHMENT
				if _items[i].Type == type.ATTACHMENT {
					switch (_items[i].id) {
						case 1:
							if !obj_player.allow_optic {
								co = c_red
								no = 1
							}
						break;
	
						case 2:
							if !obj_player.allow_grip {
								co = c_red
								no = 1
							}
						break;
	
						case 3:
							if !obj_player.allow_mount {
								co = c_red
								no = 1
							}
						break;
	
						case 4:
							if !obj_player.allow_barrel {
								co = c_red
								no = 1
							}
						break;
					}
				}
				#endregion
				
                draw_sprite_ext(_items[i].sprite, no, slot_x, slot_y, 1, 1, 40, co, 1);
				draw_set_colour(c_white)
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
    //draw_text(tr_x / 2 - 70, tr_y + tr_offsety + 60, "selected_inv:");
    //draw_text(tr_x / 2 + 70, tr_y + tr_offsety + 60, selected_inv);

    //draw_text(tr_x / 2 - 70, tr_y + tr_offsety + 80, "mouse_sel_inv:");
    //draw_text(tr_x / 2 + 70, tr_y + tr_offsety + 80, mouse_selected_inv);
}

if (context_open) {
    var w = 120;
    var h = 60;
	var spacing = 90
	var items = inv.getAll();
	
	if (selected_inv >= 0 && selected_inv < array_length(items)) {	
		draw_sprite(RMB, 0, mx + 30, my)
		draw_text(mx + 45, my, ":Use Item")
		
		var item = items[selected_inv];
	
		draw_set_alpha(random_range(0.8, 1))
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
		
		draw_text(tr_x / 2 - 70, tr_y + tr_offsety + 40, "object:");
		draw_text(tr_x / 2 + 70, tr_y + tr_offsety + 40, inv._inventory[selected_inv].object);
	}
}
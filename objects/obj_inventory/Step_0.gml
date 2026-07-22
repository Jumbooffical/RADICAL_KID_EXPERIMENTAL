var mi = obj_player
image_alpha = 0.7
visible = true	

if (obj_player.open_inventory) {
	context_open = false
    var cols = max_column;
    var sprite_width_padding = 69;
	
	var width_half  = display_get_gui_width() / 2;
    var height_half = display_get_gui_height() / 2;
	var grid_width = (cols - 1) * sprite_width_padding;
	
	var xx = width_half - grid_width / 2;
	var yy = height_half - grid_width / 2;

    var _items = inv.getAll();
    var slot_size = 64;

    for (var i = 0; i < array_length(_items); i++) {
        var col = i mod cols;
        var row = i div cols;

        var slot_x = xx + col * sprite_width_padding;
        var slot_y = yy + row * sprite_width_padding;
 
        var left   = slot_x - slot_size / 2;
        var right  = slot_x + slot_size / 2;
        var top    = slot_y - slot_size / 2;
        var bottom = slot_y + slot_size / 2;
		
		    if (mx > left && mx < right && my > top && my < bottom) {
		        inv.select(i);
		        selected_inv = i;
				
		        if (!is_dragging && mouse_check_button_pressed(mb_left)) {
		            mouse_selected_inv = i;
		            is_dragging = true;
		        }
				
				context_open = true
				context_x = slot_x + selected_inv;
				context_y = slot_y + selected_inv + sprite_width_padding / 2;
		    }
			
			if (is_dragging && mouse_check_button_released(mb_left)) {

			    if (!outside) {
			        if (selected_inv != mouse_selected_inv) {
			            inv.swap(mouse_selected_inv, selected_inv);
			        }
			    } else {
			        inv_drop();
			    }

			    is_dragging = false;
			    mouse_selected_inv = -1;
			}
		}    
	if mouse_check_button_pressed(mb_right) && selected_inv != -1 {
		inv_use()
		selected_inv = -1
	}	
}

if(obj_player.open_inventory == false) {
	inv.deselect();
	context_open = false
	visible = false
}

if position_meeting(mx, my, id) {
outside = false
} else {
outside = true
selected_inv = mouse_selected_inv
}

if (is_dragging) {
context_open = false
}
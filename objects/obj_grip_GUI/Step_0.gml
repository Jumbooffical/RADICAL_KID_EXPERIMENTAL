image_index = 1


if (obj_player.open_inventory) {
	if (mouse_check_button_pressed(mb_left)) 
	&& (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) 
	&& (!is_dragging) {
	    mouse_index = other.sprite_index;
	    is_dragging = true;
	}

	if (mouse_check_button_released(mb_left) 
	&& is_dragging) {
		if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_inventory) {
			obj_inventory.inv.add(name, description, mouse_index, 2, type.ATTACHMENT, object)
			with(obj_player) {
				quickslot[selected_item, QSlot.Grip] = 0
			}
		}
		mouse_index = 0;
		is_dragging = false;
	}
	
	if (mouse_check_button_pressed(mb_right))
	&& (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {
		obj_inventory.inv.add(name, description, sprite_index, 2, type.ATTACHMENT, object)
		with(obj_player) {
			quickslot[selected_item, QSlot.Grip] = 0
		}
	}	
	image_alpha = 1
} else {
	image_alpha = 0.5
}
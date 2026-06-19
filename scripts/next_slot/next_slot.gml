function next_slot(slot1, slot2, slot3, slot4, slot5, slotnade) {
	if cursed exit;
	if is_reloading exit;

	if !bolt_cycle {
		if (keyboard_check_pressed(slot1)) {set_current_weapon(1); 		quickslot_type = Slot.Gun}
		else if (keyboard_check_pressed(slot2)) {set_current_weapon(2); quickslot_type = Slot.Gun}
		else if (keyboard_check_pressed(slot3)) {set_current_weapon(3); quickslot_type = Slot.Gun}
		else if (keyboard_check_pressed(slot4)) {set_current_weapon(4);	quickslot_type = Slot.Gun}


			if (mouse_wheel_up()) {
				quickslot_type = Slot.Gun
				if (selected_item < extra_quickslot_amount) {
					set_current_weapon(selected_item+1);
				} else {
					set_current_weapon(1);
				}
			} else if (mouse_wheel_down()) {
				quickslot_type = Slot.Gun
				if (selected_item > 1) {
					set_current_weapon(selected_item-1);
				} else {
					set_current_weapon(extra_quickslot_amount);
				}
			}
		
	}
	
	if selected_item == 5 {
		selected_item = 4
	}
}
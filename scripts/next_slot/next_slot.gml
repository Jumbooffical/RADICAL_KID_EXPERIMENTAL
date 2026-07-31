function next_slot(slot1, slot2, slot3, slot4, slot5, slotnade) {
	if slot_input_delay > 0 exit;
	if selected_item != last_slot {
		last_slot = selected_item
		slot_input_delay = 15
	}

	if is_reloading exit;
	if melee_cd > 0 exit;

	if !bolt_cycle {
		if (keyboard_check_pressed(slot1)) {if cursed {error_feedback() exit;}set_current_weapon(1); 		quickslot_type = Slot.Gun}
		else if (keyboard_check_pressed(slot2)) {if cursed {error_feedback() exit;}set_current_weapon(2); quickslot_type = Slot.Gun}
		else if (keyboard_check_pressed(slot3)) {if cursed {error_feedback() exit;}set_current_weapon(3); quickslot_type = Slot.Gun}
		else if (keyboard_check_pressed(slot4)) {if cursed {error_feedback() exit;}set_current_weapon(4);	quickslot_type = Slot.Gun}


			if (mouse_wheel_up()) {
				slot_input_delay = 15
				if cursed {error_feedback() exit;}
				
				quickslot_type = Slot.Gun
				if (selected_item < extra_quickslot_amount) {
					set_current_weapon(selected_item+1);
				} else {
					set_current_weapon(1);
				}
			} 
			
			if (mouse_wheel_down()) {
				slot_input_delay = 15
				if cursed {error_feedback() exit;}
				
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
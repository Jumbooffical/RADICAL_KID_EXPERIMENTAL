function swap_melee(_key) {
	var key = _key
	if (keyboard_check_pressed(key)) || key == noone {
		if quickslot_type == Slot.Melee {
		selected_item = last_slot
		quickslot_type = Slot.Gun
		} else {
		quickslot_type = Slot.Melee
		selected_item = melee_quickslot
		}
	}
}
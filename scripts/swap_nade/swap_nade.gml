function swap_nade(_key) {
	var key = _key
	if (keyboard_check_pressed(key)) || key == noone {
		if cursed {error_feedback() exit;}
		if selected_item == nade_quickslot {
		selected_item = 1
		quickslot_type = Slot.Gun
		} else {
		quickslot_type = Slot.Nade
		selected_item = nade_quickslot
		}
	}
}
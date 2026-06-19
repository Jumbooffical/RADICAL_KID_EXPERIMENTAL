function insert_weapon_into_inv(_key) {
	if (keyboard_check(ord("F"))) {
		hold_pressed++;
	} else {
		hold_pressed = 0
	}
	if hold_pressed == 30 && open_inventory && !cursed {
	var wID = quickslot[selected_item, QSlot.Gun]
	
	if (array_length(obj_inventory.inv._inventory) < obj_inventory.inv._max_inventory_slots) {
		if wID != noone {
			obj_inventory.inv.add(
			weapon[wID, GUN.NAME],
			weapon[wID, GUN.DESCRIPTION],
			weapon[wID, GUN.SPRITE], 
			wID, 
			type.GUN
		);
	
		quickslot[selected_item, QSlot.Mag] = spr_mag

		quickslot[selected_item, QSlot.Gun] = noone
	
		quickslot[selected_item, QSlot.LoadedAmmo] = 0
	
		quickslot[selected_item, QSlot.Buff_Overclocked] = 0
		quickslot[selected_item, QSlot.Buff_Taped] = 0
		quickslot[selected_item, QSlot.Buff_Smart] = 0
		quickslot[selected_item, QSlot.Buff_HeatSeek] = 0
		}
	}
}}
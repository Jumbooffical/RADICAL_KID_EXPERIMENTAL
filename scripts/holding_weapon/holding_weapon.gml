function holding_weapon() { 
	if (quickslot[selected_item, QSlot.Gun] != noone) { 
		player_armed = true 
		return true; 
	} else { 
		player_armed = false 
		return false; 
	}
}
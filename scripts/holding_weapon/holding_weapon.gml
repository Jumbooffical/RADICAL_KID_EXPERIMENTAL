function holding_weapon() {
	
	if (inventory[selected_item, 0] != noone) {
		player_armed = true
		return true;
	} else {
		player_armed = false
		return false;
	}


}

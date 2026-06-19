function inventory_key(_key){
	if(keyboard_check_released(_key)) {
		if open_inventory = true {
			// Hardcoding slot when different weapon did not sync with its weapon index
			last_slot = selected_item
			set_current_weapon(melee_quickslot)
			set_current_weapon(last_slot)
		}
		open_inventory = !open_inventory;
	}
}
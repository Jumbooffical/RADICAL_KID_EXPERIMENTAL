function set_current_weapon(slot) {
    selected_item = slot;
    
    if (holding_weapon()) {
        var select = inventory[selected_item, 0];
		

        // Check validity before using it
        if (select >= 0 && array_length(weapon) > select) {
            alarm[0] = weapon[select, 10];
        } 
    }
}
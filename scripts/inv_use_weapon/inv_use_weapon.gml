function inv_use_weapon() {
    WeaponData();

    var mi = obj_player;
    var item = inv._inventory[selected_inv];
    var new_id = item.id;

    //melee slot = 2, guns not allowed
    var target_slot = mi.selected_item;

    if (target_slot == mi.melee_quickslot) {
        target_slot = 1; // force gun into slot 0
        mi.selected_item = 1;
    }

    var old_id = mi.quickslot[target_slot, QSlot.Gun];

    player_armed = true;

    // Swap old weapon back into inventory
    if (is_real(old_id) && old_id >= 0 && old_id < array_length(weapon)) {
        inv._inventory[selected_inv] = {
			name: weapon[old_id, GUN.NAME],
			description: weapon[old_id, GUN.DESCRIPTION],
            sprite: weapon[old_id, GUN.SPRITE],
            id: old_id,
            Type: type.GUN,
            hover: false
        };

        // Return ammo
        mi.current_magazine[weapon[old_id, GUN.CALIBER_ID]] += mi.quickslot[target_slot, QSlot.LoadedAmmo];
        mi.quickslot[target_slot, QSlot.LoadedAmmo] = 0;

    } else {
        // No old weapon → remove inventory item
        inv.remove(selected_inv);
    }

    // Equip NEW weapon into correct slot
    mi.quickslot[target_slot, QSlot.Gun] = new_id;
	
	with (obj_player) {
	quickslot[selected_item, QSlot.Mag] = spr_mag
	
	quickslot[selected_item, QSlot.LoadedAmmo] = 0
	
	quickslot[selected_item, QSlot.Buff_Overclocked] = 0
	quickslot[selected_item, QSlot.Buff_Taped] = 0
	quickslot[selected_item, QSlot.Buff_Smart] = 0
	}
}

function inv_use_nade() {
	GrenadeData()
	
    var mi = obj_player;
    var item = inv._inventory[selected_inv];
    var new_id = item.id;
	var old_id = mi.quickslot[mi.selected_item, QSlot.Nade];
	
    // Swap old weapon back into inventory
    if (is_real(old_id) && old_id >= 0 && old_id < array_length(nade)) {
        inv._inventory[selected_inv] = {
			name: nade[old_id, NADE.NAME],
			description: nade[old_id, NADE.DESCRIPTION],
            sprite: nade[old_id, NADE.SPRITE_SCALED],
            id: old_id,
            Type: type.CONSUMABLE,
            hover: false
        };
    } else {
        inv.remove(selected_inv);
    }

    mi.quickslot[mi.nade_quickslot, QSlot.Nade] = new_id;
	mi.nadeIndex = new_id
}
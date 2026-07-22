function inv_use_nade() {
	GrenadeData()
	
    var mi = obj_player;
    var item = inv._inventory[selected_inv];
    var new_id = item.id;
	var old_id = mi.quickslot[mi.nade_quickslot, QSlot.Nade];
	
    // Swap old weapon back into inventory
    if old_id != noone {
        inv._inventory[selected_inv] = {
			name: nade[old_id, NADE.NAME],
			description: nade[old_id, NADE.DESCRIPTION],
            sprite: nade[old_id, NADE.SPRITE],
            id: old_id,
            Type: type.NADE,
			object: item.object,
            hover: false
        };
    } else {
        inv.remove(selected_inv);
    }

    mi.quickslot[mi.nade_quickslot, QSlot.Nade] = new_id;
}
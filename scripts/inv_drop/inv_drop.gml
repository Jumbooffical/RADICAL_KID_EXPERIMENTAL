function inv_drop(){
	WeaponData()
	ItemData()
	var inv_item = inv._inventory[selected_inv];
	var mi = obj_player
	
	switch (inv_item.Type) {
		case type.GUN:
			instance_create_depth(mi.x, mi.y, 0, weapon[inv._inventory[selected_inv].id, GUN.ITEM_OBJECT])
		break;
		
		case type.NADE:
			instance_create_depth(mi.x, mi.y, 0, inv_item.object)
		break;
		
		case type.CONSUMABLE:
			instance_create_depth(mi.x, mi.y, 0, inv_item.object)
		break;
		
		case type.ATTACHMENT:
			instance_create_depth(mi.x, mi.y, 0, inv_item.object)
		break;
	}
	inv.remove(selected_inv)
}
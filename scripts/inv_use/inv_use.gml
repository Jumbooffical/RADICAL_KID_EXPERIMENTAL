function inv_use() {
	
	var item = inv._inventory[selected_inv];
	
	switch (item.Type) {
		case type.GUN:
			inv_use_weapon()
		break;
		
		case type.CONSUMABLE:
			inv_use_consumable()
		break;
		
		case type.NADE:
			inv_use_nade()
		break;
		
		case type.ATTACHMENT:
			inv_use_attachment()
		break;
	}
}
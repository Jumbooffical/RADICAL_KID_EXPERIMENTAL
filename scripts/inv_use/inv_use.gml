function inv_use() {
	
	var item = inv._inventory[selected_inv];
	
	switch (item.Type) {
		case type.GUN:
			inv_use_weapon()
		break;
		
		case type.CONSUMABLE:
			inv_use_consumable()
		break;
		
		case type.ATTACHMENT:
			if obj_player.selected_item != obj_player.melee_quickslot
			&& obj_player.selected_item != obj_player.nade_quickslot {
			inv_use_attachment()
			}
		break;
	}
}
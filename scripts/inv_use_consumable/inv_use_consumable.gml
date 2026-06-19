function inv_use_consumable(){
	var item = inv._inventory[selected_inv];
	switch (item.sprite) {
		case spr_medkit:
			obj_player.hp += 100
			inv.remove(selected_inv)
		break;
		
		case m62:
		case smoke_nade:
			inv_use_nade()
		break;
	}
}
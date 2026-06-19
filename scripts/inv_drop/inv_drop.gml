function inv_drop(){
	WeaponData()
	ItemData()
	var inv_item = inv._inventory[selected_inv];
	var mi = obj_player
	
	switch (inv_item.Type) {
		case type.GUN:
			instance_create_depth(mi.x, mi.y, 0, weapon[inv._inventory[selected_inv].id, GUN.ITEM_OBJECT])
		break;
		
		case type.CONSUMABLE:
			instance_create_depth(mi.x, mi.y, 0, item[inv._inventory[selected_inv].id, 3])
		break;
		
		case type.ATTACHMENT:
			var obj_item = 0
			switch (inv_item.sprite) {
				case spr_rds:
				obj_item = obj_item_rds
				break;
				
				case spr_lrs:
				obj_item = obj_item_pm2
				break;
				
				case spr_acog:
				obj_item = obj_item_acog
				break;
				
				case spr_vertical_grip:
				obj_item = obj_item_vertical_grip
				break;
				
				case spr_blue_laser:
				obj_item = obj_item_blue_laser
				break;
				
				case spr_suppressor:
				obj_item = obj_item_suppressor
				break;
				
				case spr_burst_amplifier:
				obj_item = obj_item_burst_amplifier
				break;	
				
				case spr_kunai_launcher:
				obj_item = obj_item_kunai_launcher
				break;
				
				case spr_shuriken_printer:
				obj_item = obj_item_shuriken_printer
				break;
				
				case spr_grip_w_flashlight:
				obj_item = obj_item_grip_w_flashlight
				break;
				
				case spr_chainsaw_grip:
				obj_item = obj_item_chainsaw_grip
				break;
				
				case spr_nade_launcher:
				obj_item = obj_item_nade_launcher
				break;
			}
			instance_create_depth(mi.x, mi.y, 0, obj_item)
		break;
	}
	
	inv.remove(selected_inv)
}
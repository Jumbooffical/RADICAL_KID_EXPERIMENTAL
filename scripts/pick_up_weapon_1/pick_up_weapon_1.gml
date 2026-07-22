function pick_up_weapon1(_key) {
	var nearest_item = instance_nearest(x, y, par_item);
	if (distance_to_object(nearest_item) < weapon_grab_distance) {
		nearest_item.show_pickup = true
	} else {
		nearest_item.show_pickup = false
	}
	
	if (!busy) && !cursed {
	if (keyboard_check_released(_key)) {
	// CAPITALISM
	if nearest_item.in_shop 
	&& (distance_to_object(nearest_item) < weapon_grab_distance) {
		if cash >= nearest_item.price {
			cash -= nearest_item.price 
			nearest_item.in_shop = false
			exit;
		} else {
			exit;
		}
	}
		
	// Pick up weapon
	var nearest_weapon = instance_nearest(x, y, par_item_weapon);
	var nearest_melee = instance_nearest(x, y, par_item_melee);
	var nearest_nade = instance_nearest(x, y, par_item_throwable);
	var nearest_consume = instance_nearest(x, y, par_item_consumable)
	var nearest_mod = instance_nearest(x, y, par_item_attachment)

	if (distance_to_object(nearest_weapon) < weapon_grab_distance) {
		// Drop the selected weapon first
		if (quickslot_type = Slot.Melee) || selected_item >= nade_quickslot {
			selected_item = last_slot
			quickslot_type = Slot.Gun
		}
		
		if (holding_weapon()) {
			var gun = instance_create_depth(x, y, 0, weapon[quickslot[selected_item, QSlot.Gun], GUN.ITEM_OBJECT]);
			gun.current_mag = quickslot[selected_item, QSlot.LoadedAmmo];
			gun.full_auto = full_auto
			gun.mag = quickslot[selected_item, QSlot.Mag]
			
			gun.overclocked = quickslot[selected_item, QSlot.Buff_Overclocked]
			gun.taped = quickslot[selected_item, QSlot.Buff_Taped]
			gun.smart = quickslot[selected_item, QSlot.Buff_Smart]
			gun.heatseek = quickslot[selected_item, QSlot.Buff_HeatSeek]
			
			gun.airmag = quickslot[selected_item, QSlot.Debuff_AirMag]
		}
	
		quickslot[selected_item, QSlot.Gun] = nearest_weapon.index;
		quickslot[selected_item, QSlot.LoadedAmmo] = nearest_weapon.current_mag;
		quickslot[selected_item, QSlot.Mag] = nearest_weapon.mag;
		
		quickslot[selected_item, QSlot.Buff_Overclocked] = nearest_weapon.overclocked;
		quickslot[selected_item, QSlot.Buff_Taped] = nearest_weapon.taped;
		quickslot[selected_item, QSlot.Buff_Smart] = nearest_weapon.smart;
		quickslot[selected_item, QSlot.Buff_HeatSeek] = nearest_weapon.heatseek;
		
		quickslot[selected_item, QSlot.Debuff_AirMag] = nearest_weapon.airmag;
		
		quickslot[selected_item, QSlot.Melee] = noone;
		full_auto = nearest_weapon.full_auto
	
		var select = quickslot[selected_item, QSlot.Gun]; 
		alarm[0] = weapon[select, 9];
		
		player_armed = true;
		par_gun.weaponIndex = nearest_weapon.index
		
		audio_play_sound(weapon[par_gun.weaponIndex, GUN.SFX_SWAPPING], 10, false, 1, 0, 0.7);
		
		with (nearest_weapon) {
			instance_destroy();
		}
		
		
	} else if distance_to_object(nearest_melee) < weapon_grab_distance {
		if (quickslot[melee_quickslot, QSlot.Melee] != ml.fist) {
		    var meleeIndex = quickslot[melee_quickslot, QSlot.Melee];
		    instance_create_depth(x, y, 0, melee[meleeIndex, MELEE.ITEM]);
		}
		
		quickslot[melee_quickslot, QSlot.Melee] = nearest_melee.index;
		
		obj_player.meleeIndex = nearest_melee.index
		
		player_armed = false;
		
		spin = 360 * 3
		
		with (nearest_melee) {
		instance_destroy();
		}
	
	
	} else if distance_to_object(nearest_nade) < weapon_grab_distance {
		player_armed = false;
		
		if (array_length(obj_inventory.inv._inventory) < obj_inventory.inv._max_inventory_slots) {
			obj_inventory.inv.add(
			nade[nearest_nade.index, NADE.NAME],
			nade[nearest_nade.index, NADE.DESCRIPTION],
			nade[nearest_nade.index, NADE.SPRITE],
			nearest_nade.index,
			type.NADE
			)
		
			with (nearest_nade) {
			instance_destroy()
			}
		}

	//} else if (distance_to_object(nearest_consume) < weapon_grab_distance) {
	//	obj_inventory.inv.add(
	//	item[nearest_consume.index, 1], 
	//	nearest_consume.index, 
	//	type.CONSUMABLE
	//	)
		
	//	with (nearest_consume) {
	//	instance_destroy()
	//	}
	
	} else 	if (distance_to_object(nearest_mod) < weapon_grab_distance) {
		if (array_length(obj_inventory.inv._inventory) < obj_inventory.inv._max_inventory_slots) {
			obj_inventory.inv.add(
			nearest_mod.name,
			nearest_mod.description,
			nearest_mod.sprite_index, 
			nearest_mod.index, // 1- optic, 2- grip, 3- mount, 4- barrel
			type.ATTACHMENT
			)
		
			with (nearest_mod) {
			instance_destroy()
			}
		}
	}	
}}}
function pick_up_weapon(_key) {
	var nearest_item = instance_nearest(x, y, par_item);
	pickup_target = noone;
	var nearest_dist = weapon_grab_distance;

	with (par_item)
	{
	    show_pickup = false;

	    var dist = point_distance(other.x, other.y, x, y);

	    if (dist < nearest_dist)
	    {
	        nearest_dist = dist;
	        other.pickup_target = id;
	    }
	}

	if (pickup_target != noone)
	{
	    pickup_target.show_pickup = true;
	}
	
	if (!busy) {
	if (keyboard_check_released(_key))
	|| _key == noone {
	if cursed {error_feedback() exit;}
	
	if (pickup_target == noone) exit;
	
	// CAPITALISM
	if pickup_target.in_shop {
		if cash >= pickup_target.price {
			cash -= pickup_target.price 
			pickup_target.in_shop = false
			audio_play_sound(snd_purchased, 1, 0)
		} else {
			text_shake_alarm = 30
			exit;
		}
	}
		
	switch (object_get_parent(pickup_target.object_index)) {
		case par_item_weapon:
			// Drop the selected weapon first
			if (selected_item == melee_quickslot || selected_item >= nade_quickslot) {
				selected_item = 1;
				quickslot_type = Slot.Gun;
			}

			if (holding_weapon()) {
				var gun = instance_create_depth(x, y, 0, weapon[quickslot[selected_item, QSlot.Gun], GUN.ITEM_OBJECT]);
				gun.current_mag = quickslot[selected_item, QSlot.LoadedAmmo];
				gun.full_auto = full_auto;
				gun.mag = quickslot[selected_item, QSlot.Mag];

				gun.overclocked = quickslot[selected_item, QSlot.Buff_Overclocked];
				gun.taped = quickslot[selected_item, QSlot.Buff_Taped];
				gun.smart = quickslot[selected_item, QSlot.Buff_Smart];
				gun.heatseek = quickslot[selected_item, QSlot.Buff_HeatSeek];

				gun.airmag = quickslot[selected_item, QSlot.Debuff_AirMag];
				gun.image_xscale = image_xscale
			}

			quickslot[selected_item, QSlot.Gun] = pickup_target.index;
			quickslot[selected_item, QSlot.LoadedAmmo] = pickup_target.current_mag;
			quickslot[selected_item, QSlot.Mag] = pickup_target.mag;

			quickslot[selected_item, QSlot.Buff_Overclocked] = pickup_target.overclocked;
			quickslot[selected_item, QSlot.Buff_Taped] = pickup_target.taped;
			quickslot[selected_item, QSlot.Buff_Smart] = pickup_target.smart;
			quickslot[selected_item, QSlot.Buff_HeatSeek] = pickup_target.heatseek;

			quickslot[selected_item, QSlot.Debuff_AirMag] = pickup_target.airmag;

			quickslot[selected_item, QSlot.Melee] = noone;

			full_auto = pickup_target.full_auto;

			var select = quickslot[selected_item, QSlot.Gun];
			player_armed = true;
			audio_play_sound(
				weapon[select, GUN.SFX_SWAPPING],
				10, false, 1, 0, 0.7
			);

			with (pickup_target)
			{
				instance_destroy();
			}

		break;

		case par_item_melee:

			if (quickslot[melee_quickslot, QSlot.Melee] != ml.fist) {
				var meleeIndex = quickslot[melee_quickslot, QSlot.Melee];
				instance_create_depth(x, y, 0, melee[meleeIndex, MELEE.ITEM]);
			}

			quickslot[melee_quickslot, QSlot.Melee] = pickup_target.index;

			obj_player.meleeIndex = pickup_target.index;

			player_armed = false;

			spin = 360 * 3;

			with (pickup_target)
			{
				instance_destroy();
			}

		break;

		case par_item_throwable:

			player_armed = false;

			if (array_length(obj_inventory.inv._inventory) < obj_inventory.inv._max_inventory_slots) {

				obj_inventory.inv.add(
					nade[pickup_target.index, NADE.NAME],
					nade[pickup_target.index, NADE.DESCRIPTION],
					nade[pickup_target.index, NADE.SPRITE],
					pickup_target.index,
					type.NADE,
					pickup_target.object_index
				);
				with (pickup_target)
				{
					instance_destroy();
				}
			}

		break;

		case par_item_attachment:

			if (array_length(obj_inventory.inv._inventory) < obj_inventory.inv._max_inventory_slots) {

				obj_inventory.inv.add(
					pickup_target.name,
					pickup_target.description,
					pickup_target.sprite_index,
					pickup_target.index,
					type.ATTACHMENT,
					pickup_target.object_index
				);

				with (pickup_target)
				{
					instance_destroy();
				}
			}

		break;
		
		case par_item_consumable:

			if (array_length(obj_inventory.inv._inventory) < obj_inventory.inv._max_inventory_slots) {

				obj_inventory.inv.add(
					pickup_target.name,
					pickup_target.description,
					pickup_target.sprite_index,
					0,					
					type.CONSUMABLE,
					pickup_target.object_index
				);

				with (pickup_target)
				{
					instance_destroy();
				}
			}

		break;
	}
}}}
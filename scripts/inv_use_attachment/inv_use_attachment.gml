function inv_use_attachment() {
	if obj_player.selected_item == obj_player.melee_quickslot obj_player.selected_item = 1;
	if obj_player.selected_item == obj_player.nade_quickslot obj_player.selected_item = 1;
	
	var item = inv._inventory[selected_inv];
	var mi = obj_player
	
	// Reset value
	mi.kunai = 0
	mi.burst_failure = true
	
	switch (item.id) {
		case 1: // Optic
			var old_optic = obj_optic_GUI.object;
			obj_optic_GUI.object = inv._inventory[selected_inv].object
			
			if mi.quickslot[mi.selected_item, QSlot.Optic] == 0 {
				inv.remove(selected_inv);
			} else {
				inv._inventory[selected_inv] = {
					name: obj_optic_GUI.name,
					description: obj_optic_GUI.description,
				    sprite: mi.quickslot[mi.selected_item, QSlot.Optic],
				    id: 1,
				    Type: type.ATTACHMENT,
					object: old_optic,
				    hover: false
		        };
			}
			mi.quickslot[mi.selected_item, QSlot.Optic] = item.sprite
			
	
			audio_play_sound(snd_optic, 1, 0, 
			3, 0, random_range(0.8, 1.1))
		break;
			
			
		case 2: // Grip 
			var old_grip = obj_grip_GUI.object;
			obj_grip_GUI.object = inv._inventory[selected_inv].object
			if mi.quickslot[mi.selected_item, QSlot.Grip] == 0 {
				inv.remove(selected_inv);
			} else {
				inv._inventory[selected_inv] = {
					name: obj_grip_GUI.name,
					description: obj_grip_GUI.description,
				    sprite: mi.quickslot[mi.selected_item, QSlot.Grip],
				    id: 2,
				    Type: type.ATTACHMENT,
					object: old_grip,
				    hover: false
		        };	
			}
			mi.quickslot[mi.selected_item, QSlot.Grip] = item.sprite
	
			//audio_play_sound(snd_optic, 1, 0, 
			//3, 0, random_range(0.8, 1.1))
		break;
		
		
		
		case 3: // Mount
			var old_mount = obj_mount_GUI.object;
			obj_mount_GUI.object = inv._inventory[selected_inv].object
			if mi.quickslot[mi.selected_item, QSlot.Mount] == 0 {
				inv.remove(selected_inv);
			} else {
				inv._inventory[selected_inv] = {
					name: obj_mount_GUI.name,
					description: obj_mount_GUI.description,
				    sprite: mi.quickslot[mi.selected_item, QSlot.Mount],
				    id: 3,
				    Type: type.ATTACHMENT,
					object: old_mount,
				    hover: false
		        };	
			}
			mi.quickslot[mi.selected_item, QSlot.Mount] = item.sprite
			
			//audio_play_sound(snd_optic, 1, 0, 
			//3, 0, random_range(0.8, 1.1))
		break;
		
		
		
		case 4: // Barrel
			var old_barrel = obj_barrel_GUI.object;
			obj_barrel_GUI.object = inv._inventory[selected_inv].object
			if mi.quickslot[mi.selected_item, QSlot.Barrel] == 0 {
				inv.remove(selected_inv);
			} else {
				inv._inventory[selected_inv] = {
					name: obj_barrel_GUI.name,
					description: obj_barrel_GUI.description,
				    sprite: mi.quickslot[mi.selected_item, QSlot.Barrel],
				    id: 4,
				    Type: type.ATTACHMENT,
					object: old_barrel,
				    hover: false
		        };	
			}
			mi.quickslot[mi.selected_item, QSlot.Barrel] = item.sprite
			
			//audio_play_sound(snd_optic, 1, 0, 
			//3, 0, random_range(0.8, 1.1))
		break;	
	}
}	
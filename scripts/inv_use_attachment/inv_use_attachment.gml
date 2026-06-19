function inv_use_attachment(){
	var item = inv._inventory[selected_inv];
	var mi = obj_player
	
	// Reset value
	mi.kunai = 0
	mi.burst_failure = true
	
	switch (item.id) {
		case 1: // Optic 
			if mi.quickslot[mi.selected_item, QSlot.Optic] == 0 {
				inv.remove(selected_inv);
			} else {
				inv._inventory[selected_inv] = {
					name: obj_optic_GUI.name,
					description: obj_optic_GUI.description,
				    sprite: mi.quickslot[mi.selected_item, QSlot.Optic],
				    id: 1,
				    Type: type.ATTACHMENT,
				    hover: false
		        };	
			}
			mi.quickslot[mi.selected_item, QSlot.Optic] = item.sprite
			obj_optic_GUI.name = item.name
			obj_optic_GUI.description = item.description
	
			audio_play_sound(snd_optic, 1, 0, 
			3, 0, random_range(0.8, 1.1))
		break;
			
			
		case 2: // Grip 
			if mi.quickslot[mi.selected_item, QSlot.Grip] == 0 {
				inv.remove(selected_inv);
			} else {
				inv._inventory[selected_inv] = {
					name: obj_grip_GUI.name,
					description: obj_grip_GUI.description,
				    sprite: mi.quickslot[mi.selected_item, QSlot.Grip],
				    id: 2,
				    Type: type.ATTACHMENT,
				    hover: false
		        };	
			}
			mi.quickslot[mi.selected_item, QSlot.Grip] = item.sprite
			obj_grip_GUI.name = item.name
			obj_grip_GUI.description = item.description
	
			//audio_play_sound(snd_optic, 1, 0, 
			//3, 0, random_range(0.8, 1.1))
		break;
		
		
		
		case 3: // Mount
			if mi.quickslot[mi.selected_item, QSlot.Mount] == 0 {
				inv.remove(selected_inv);
			} else {
				inv._inventory[selected_inv] = {
					name: obj_mount_GUI.name,
					description: obj_mount_GUI.description,
				    sprite: mi.quickslot[mi.selected_item, QSlot.Mount],
				    id: 3,
				    Type: type.ATTACHMENT,
				    hover: false
		        };	
			}
			mi.quickslot[mi.selected_item, QSlot.Mount] = item.sprite
			obj_mount_GUI.name = item.name
			obj_mount_GUI.description = item.description
			
			//audio_play_sound(snd_optic, 1, 0, 
			//3, 0, random_range(0.8, 1.1))
		break;
		
		
		
		case 4: // Barrel
			if mi.quickslot[mi.selected_item, QSlot.Barrel] == 0 {
				inv.remove(selected_inv);
			} else {
				inv._inventory[selected_inv] = {
					name: obj_barrel_GUI.name,
					description: obj_barrel_GUI.description,
				    sprite: mi.quickslot[mi.selected_item, QSlot.Barrel],
				    id: 4,
				    Type: type.ATTACHMENT,
				    hover: false
		        };	
			}
			mi.quickslot[mi.selected_item, QSlot.Barrel] = item.sprite
			obj_barrel_GUI.name = item.name
			obj_barrel_GUI.description = item.description
			
			//audio_play_sound(snd_optic, 1, 0, 
			//3, 0, random_range(0.8, 1.1))
		break;	
	}
}	
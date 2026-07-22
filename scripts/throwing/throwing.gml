function throwing(){
if (selected_item == nade_quickslot) && nadeIndex != noone {
	var aim = point_direction(x, y, mouse_x, mouse_y);
	if (mouse_check_button_pressed(mb_left))
	&& stab <= 10 {
		stab = 70
		with instance_create_depth(x, y, depth, nade[nadeIndex, NADE.UNPIN]) {
	        direction = aim
			velocity = 21
	    }
		audio_play_sound(snd_unpin, 1, 0, 1, 0, 0.8)
		obj_retreat_zone.timer = 5
		
		quickslot[selected_item, QSlot.Nade] = noone;
		
		with (obj_inventory) {
			var grenade_slot = inv.findItemById(other.nade[other.nadeIndex, NADE.SPRITE]);
			if (grenade_slot != -1) {
				selected_inv = grenade_slot
			    inv_use_nade()
			}
		}
	}
	
	//if (mouse_check_button_pressed(mb_right)) {
	//with instance_create_depth(x, y, depth, nade[nadeIndex, NADE.UNPIN]) {
    //    direction = aim
	//	velocity = 12
    //}
	//	audio_play_sound(snd_unpin, 1, 0, 1, 0, 0.8)
	//	obj_retreat_zone.timer = 5
	//}
}
}
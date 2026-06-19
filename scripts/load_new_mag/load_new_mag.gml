function load_new_mag() {
	rng_mag = mags[irandom(array_length(mags)-1)].sprite;
	
	if (sprite_index != spr_empty_mag_slot) {
	obj_player.done_selection = true
	}
	
	obj_player.quickslot[obj_player.selected_item, QSlot.Mag] = sprite_index
	
	if mouse_check_button_pressed(mb_left) && sprite_index == spr_rngmag {
		obj_player.quickslot[obj_player.selected_item, QSlot.Mag] = rng_mag
	}
	
	if (sprite_index != spr_empty_mag_slot)
	&& (sprite_index != spr_rngmag) 
	&& !obj_player.cursed {
	var afterimg = instance_create_depth(x, y, -11, gui_afterimage) 
	afterimg.sprite_index = sprite_index
	}
}
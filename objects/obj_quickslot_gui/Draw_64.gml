// I HATE DOING THIS AAAAAAAAAAA
// I WILL NOT TRY TO FIX THIS, PLEASE FORGET THIS CODE EXIST ;-;
// NO IT'S NOT AI GENERATED, IT'S YANDERE SIMULATOR

with (obj_player) {
if obj_player.is_aiming exit;
var slot_alpha = 0.5
var slot_size = sprite_get_width(spr_selection);	
		draw_sprite_ext(spr_nadeslot, 0, (slot_size) + (nade_quickslot-1) * slot_size, 0, 1, 1, 0, c_white, slot_alpha);
		draw_sprite_ext(spr_meleeslot, 0, (slot_size) + (nade_quickslot-2) * slot_size, 0, 1, 1, 0, c_white, slot_alpha);
		for (var i = 0; i <= nade_quickslot; i++) {
			if i < extra_quickslot_amount {
			draw_sprite_ext(spr_gunslot, 0, (slot_size) + (i-1) * slot_size, 0, 1, 1, 0, c_white, slot_alpha);
			}
		}
		
		switch (quickslot_type) {
		case Slot.Gun:
		new_spot = (selected_item - 1) * slot_size
		break;
	
		case Slot.Melee:
		new_spot = (slot_size) + (nade_quickslot-2) * slot_size
		break;
	
		case Slot.Nade:
		new_spot = (slot_size) + (nade_quickslot-1) * slot_size
		break;
		}
		other.current_spot = lerp(other.current_spot, new_spot, 0.2)
		draw_sprite(spr_quickslot_selection, 0, other.current_spot, 0);
		
		for (var i = 0; i <= nade_quickslot; i++) {
			if (quickslot[i, QSlot.Gun] != noone) {
				draw_sprite_ext(
				weapon[quickslot[i, QSlot.Gun], GUN.SPRITE], 
				gun_frame, 
				(slot_size/2) + (i-1) * slot_size, 
				slot_size/2, 
				0.8, 0.8, 40, c_white, 1);
			}
	
			mod_no[i] = 0;

			if (quickslot[i, QSlot.Optic] != 0) mod_no[i] += 1;
			if (quickslot[i, QSlot.Mount] != 0) mod_no[i] += 1;
			if (quickslot[i, QSlot.Grip] != 0) mod_no[i] += 1;
			if (quickslot[i, QSlot.Barrel] != 0) mod_no[i] += 1;

			if mod_no[i] != 0 {
			draw_text_blend(45 + (i - 1) * slot_size, 50, "+" + string(mod_no[i]), c_lime);
			}
		}
		
		if (quickslot[nade_quickslot, QSlot.Nade] != noone) {
			draw_sprite_ext(
			nade[quickslot[nade_quickslot, QSlot.Nade], NADE.SPRITE_SCALED], 
			gun_frame, 
			(slot_size/2) + (nade_quickslot) * slot_size, 
			slot_size/2,
			0.8, 0.8, 40, c_white, 1);
		}

		
		if (quickslot[melee_quickslot, QSlot.Melee] != noone) {
			draw_sprite_ext(
			melee[quickslot[melee_quickslot, QSlot.Melee], MELEE.SPRITE], 
			0, 
			(slot_size/3) + (nade_quickslot-1) * slot_size, 
			slot_size/1.5,
			0.8, 0.8, -40, c_white, 1);
		}
		
		for (var i = 0; i < 4; i++) {
			draw_text((slot_size) + (i-1) * slot_size, 0,
			"[" + string(i+1) + "]")
		}
		
		draw_text((slot_size) + (nade_quickslot-2) * slot_size, 0,
		"[Q]")
		draw_text((slot_size) + (nade_quickslot-1) * slot_size, 0,
		"[G]")
}
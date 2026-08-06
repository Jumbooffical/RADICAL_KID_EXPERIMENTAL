function reroll_magazine() {
	var mi = obj_player
    if (mi.select_mag) return;

    var slot_count = instance_number(mech_mag);
	
    var chosen_mag = pick_mags(global.allmags, slot_count);
	var array = array_length(chosen_mag)
	
	if (mi.quickslot[mi.selected_item, QSlot.Mag]) == spr_wishingmag {
		global.allmags = array_shuffle(global.allmags)
		chosen_mag = global.allmags
		array = array_length(global.allmags)	
	} else {
		chosen_mag = pick_mags(global.allmags, slot_count);
		array = array_length(chosen_mag)
	}
	
    var i = 0;

    with (mech_mag) {
        if (i < array) {
            mag = chosen_mag[i].sprite; 
			rarity = chosen_mag[i].rarity;
            i++;
        }
    }

    mi.select_mag = true;
}
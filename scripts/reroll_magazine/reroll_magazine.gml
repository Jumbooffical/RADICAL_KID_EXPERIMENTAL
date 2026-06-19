function reroll_magazine() {

    if (obj_player.select_mag) return;

    var slot_count = instance_number(mech_mag);

    var chosen_mag = pick_mags(global.allmags, slot_count);

    var i = 0;

    with (mech_mag) {
        if (i < array_length(chosen_mag)) {
            mag = chosen_mag[i].sprite; 
			rarity = chosen_mag[i].rarity;
            i++;
        }
    }

    obj_player.select_mag = true;
}
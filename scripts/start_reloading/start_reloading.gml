function start_reloading() {
	WeaponData()
	var max_slot = magslot;
	var spacing = 77;
	var nearest = instance_nearest(x, y, mech_mag)

	var start_x = 832
	var center_y = 350;
	var total_height = (max_slot - 1) * spacing;
	var start_y = center_y - total_height / 2;
		
	for (var i = 0; i < max_slot; i++) {
	    var y_pos = start_y + (i * spacing);
	    var slot = instance_create_depth(start_x, y_pos, 0, mech_mag);
	    instance_create_depth(start_x, y_pos, 0, obj_ray);
		
		if i > 3 {
		obj_store_mag.y += 20 * (i - 1)
		}
	}

	//obj_store_mag.y = start_y + (max_slot * spacing)

    var wID = par_gun.weaponIndex;
    var caliber = weapon[wID, GUN.CALIBER_ID];

	quickslot[selected_item, QSlot.LoadedAmmo] = 0
    is_reloading = true;
    reload_timer = weapon[wID, GUN.RELOAD_DELAY] / reload_mult;
	max_reload = reload_timer
	
    reload_caliber = caliber; // remember which ammo type
    audio_play_sound(weapon[wID, GUN.SFX_RELOADING], 10, false, 1, 0, 1);
	done_selection = false
	
	var rng = irandom_range(0, 100)
	if rng < curse_chance {
		cursed = true
		reload_timer = curse_reload_penalty
		max_reload = curse_reload_penalty
	} else {
		cursed = false
	}
	
	quickslot[selected_item, QSlot.Buff_Overclocked]--;
	quickslot[selected_item, QSlot.Buff_Smart]--;
	quickslot[selected_item, QSlot.Buff_HeatSeek]--;
	
	quickslot[selected_item, QSlot.Debuff_AirMag]--;
}
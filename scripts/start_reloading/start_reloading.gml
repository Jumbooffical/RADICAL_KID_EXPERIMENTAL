function start_reloading() {
    var caliber = weapon[wID, GUN.CALIBER_ID];

    is_reloading = true;
    reload_timer = (weapon[wID, GUN.RELOAD_DELAY] / reload_mult) / reload_mult;
	max_reload = reload_timer
	
	if gun_type == WeaponType.Shotgun {
		if quickslot[selected_item, QSlot.LoadedAmmo] < mag_size {
			done_selection = true
		} else {
			is_reloading = false
			exit;
		}
	} else {
		select_mag = false
		display_magazine()
		done_selection = false
		quickslot[selected_item, QSlot.LoadedAmmo] = 0
		
		if rng < curse_chance {
			cursed = true
		} else {
			cursed = false
		}
		
		CLAR_stim_count--
		EPIK_stim_count--
		DRUM_stim_count--
		HEX_stim_count--
	}
    reload_caliber = caliber;
    audio_play_sound(weapon[wID, GUN.SFX_RELOADING], 10, false, 1, 0, 1);
	
	quickslot[selected_item, QSlot.Buff_Overclocked]--;
	quickslot[selected_item, QSlot.Buff_Smart]--;
	quickslot[selected_item, QSlot.Buff_HeatSeek]--;
	quickslot[selected_item, QSlot.Buff_Power]--;
	
	quickslot[selected_item, QSlot.Debuff_AirMag]--;
	quickslot[selected_item, QSlot.Debuff_Void]--;
}
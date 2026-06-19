function set_current_weapon(slot) {
    selected_item = slot;
    
    if (holding_weapon()) {
        var select = quickslot[selected_item, QSlot.Gun];
		par_gun.weaponIndex = select
		audio_play_sound(weapon[par_gun.weaponIndex, GUN.SFX_SWAPPING], 10, false, 1, 0, 0.7);

        // Check validity before using it
        if (select >= 0 && array_length(weapon) > select) {
        } else {
			var select2 = quickslot[selected_item, QSlot.Melee];
			par_hitzone.meleeIndex = select
		}
    }
}
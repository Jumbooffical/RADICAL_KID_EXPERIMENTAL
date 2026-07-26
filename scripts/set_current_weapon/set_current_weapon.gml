function set_current_weapon(slot) {
    selected_item = slot;
    
    if (holding_weapon()) {
        var select = quickslot[selected_item, QSlot.Gun];
		audio_play_sound(weapon[select, GUN.SFX_SWAPPING], 10, false, 0.25, 0, 0.7);
    }
}
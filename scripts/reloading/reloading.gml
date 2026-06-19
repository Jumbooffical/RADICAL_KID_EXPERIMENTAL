function reloading(){
	WeaponSystemProgram()
    var wID = par_gun.weaponIndex;
    var caliber   = ammo[wID, 8];
    var mag_size  = weapon[wID, 16];
    var inv_ammo  = obj_player.current_ammo[caliber];
    var transfer  = mag_size - inventory[selected_item, 1];
    var to_reload = min(transfer, inv_ammo);

    if (to_reload > 0) {
        is_reloading = true;
        reload_timer = weapon[wID, 18];		  // e.g. 165 frames
        reload_amount = to_reload;            // store how much to load later
        reload_caliber = caliber;             // remember which ammo type
        audio_play_sound(weapon[wID, 19], 10, false, 1, 0, 1);
    }
}
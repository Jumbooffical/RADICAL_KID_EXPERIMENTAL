function savegame() {
    var _saveData = array_create(0);

    with (obj_player) {

        var _quickslots = array_create(max_quickslot + 1);

        for (var i = 0; i <= max_quickslot; i++) {
            _quickslots[i] = {
                Gun : quickslot[i, QSlot.Gun],
                LoadedAmmo : quickslot[i, QSlot.LoadedAmmo],
                Melee : quickslot[i, QSlot.Melee],
                Nade : quickslot[i, QSlot.Nade],
                Mag : quickslot[i, QSlot.Mag],

                Buff_Taped : quickslot[i, QSlot.Buff_Taped],
                Buff_Overclocked : quickslot[i, QSlot.Buff_Overclocked],
                Buff_Smart : quickslot[i, QSlot.Buff_Smart],
                Buff_HeatSeek : quickslot[i, QSlot.Buff_HeatSeek],

                Debuff_AirMag : quickslot[i, QSlot.Debuff_AirMag],

                Optic : quickslot[i, QSlot.Optic],
                Mount : quickslot[i, QSlot.Mount],
                Grip : quickslot[i, QSlot.Grip],
                Barrel : quickslot[i, QSlot.Barrel]
            };
        }
		
		var mags = [];

		with (obj_store_mag)
		{
		    array_push(mags, {
				sprite : sprite_index,
			}
		)}

        var _savePlayer = {
            x : x,
            y : y,
			
			all_rooms : global.all_rooms,
			room : room,
			
			level : global.level,
			tier : global.tier,
			maxhp : base.maxhp,
			hp : hp,
			cursed : cursed,
            spd_mult : spd_mult,
            wID : wID,
			
			magslot : magslot,
			max_pocket : max_pocket,
			mags : mags,
			
			MEND_stim_timer : MEND_stim_timer,
			ZERK_stim_timer : ZERK_stim_timer,
			NOON_stim_timer : NOON_stim_timer,
			UNDY_stim_timer : UNDY_stim_timer,
			
			CLAR_stim_count : CLAR_stim_count,
			EPIK_stim_count : EPIK_stim_count,
			DRUM_stim_count : DRUM_stim_count,
			HEX_stim_count : HEX_stim_count,

            Medium : current_magazine[Caliber.Medium],
            Light : current_magazine[Caliber.Light],
            Heavy : current_magazine[Caliber.Heavy],
            Long : current_magazine[Caliber.Long],
            Shell : current_magazine[Caliber.Shell],

            quickslots : _quickslots,
			inventory : obj_inventory.inv._inventory,
			nadeIndex : nadeIndex,
			
			mutation : applied_mutation,
			all_mutations : all_mutations,
			enemy_mutation : applied_enemy_mutation,
			all_enemy_mutation : all_enemy_mutations,
			
			cancer_phase : cancer_phase,
			cancer_timer : cancer_timer,
			
			cash : cash,
			
			time_elapsed : time_elapsed,
			death_count : death_count,
			easymode : easymode,
        };
        array_push(_saveData, _savePlayer);
    }
	
	var _string = json_stringify(_saveData)
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "radicalkid.sav");
	buffer_delete(_buffer);
	
	show_debug_message("Saved!")
}
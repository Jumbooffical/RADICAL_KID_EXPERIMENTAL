function loadgame() {
	
    if (!file_exists("radicalkid.sav")) {
        show_debug_message("Save file not found!");
        return;
    }

    var _buffer = buffer_load("radicalkid.sav");
    var _string = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);

    var _loadData = json_parse(_string);

    while (array_length(_loadData) > 0) {

        var _loadPlayer = array_pop(_loadData);

        var _player = instance_create_layer(0, 0, "Instances", obj_player);
		
		with (obj_pocket_mag) {
		    instance_destroy();
		}

        with (obj_player) {
			global.ringing = 0
			slot_input_delay = -1
			selected_item = 1
			quickslot_type = Slot.Gun
			
			death = false
			sound_proc = true
			x = _loadPlayer.x
			y = _loadPlayer.y
			
			MEND_stim_timer = _loadPlayer.MEND_stim_timer
			ZERK_stim_timer = _loadPlayer.ZERK_stim_timer
			NOON_stim_timer = _loadPlayer.NOON_stim_timer
			UNDY_stim_timer = _loadPlayer.UNDY_stim_timer
			
			CLAR_stim_count = _loadPlayer.CLAR_stim_count
			EPIK_stim_count = _loadPlayer.EPIK_stim_count
			DRUM_stim_count = _loadPlayer.DRUM_stim_count
			HEX_stim_count = _loadPlayer.HEX_stim_count
			
			global.all_rooms = _loadPlayer.all_rooms
			room = _loadPlayer.room
			
			global.level = _loadPlayer.level
			global.tier = _loadPlayer.tier
			base.maxhp = _loadPlayer.maxhp
            hp = _loadPlayer.hp
            spd_mult = _loadPlayer.spd_mult;
            wID = _loadPlayer.wID;
			cash = _loadPlayer.cash;
			
			cursed = false
			if _loadPlayer.cursed {
				curse_alarm = 30
			}

            current_magazine[Caliber.Medium] = _loadPlayer.Medium;
            current_magazine[Caliber.Light] = _loadPlayer.Light;
            current_magazine[Caliber.Heavy] = _loadPlayer.Heavy;
            current_magazine[Caliber.Long] = _loadPlayer.Long;
            current_magazine[Caliber.Shell] = _loadPlayer.Shell;
			
			printed_ammo = _loadPlayer.printed_ammo

            for (var i = 0; i <= max_quickslot; i++) {
                var q = _loadPlayer.quickslots[i];

                quickslot[i, QSlot.Gun] = q.Gun;
                quickslot[i, QSlot.LoadedAmmo] = q.LoadedAmmo;
                quickslot[i, QSlot.Melee] = q.Melee;
                quickslot[i, QSlot.Nade] = q.Nade;
                quickslot[i, QSlot.Mag] = q.Mag;

                quickslot[i, QSlot.Buff_Taped] = q.Buff_Taped;
                quickslot[i, QSlot.Buff_Overclocked] = q.Buff_Overclocked;
                quickslot[i, QSlot.Buff_Smart] = q.Buff_Smart;
                quickslot[i, QSlot.Buff_HeatSeek] = q.Buff_HeatSeek;
				quickslot[i, QSlot.Buff_Power] = q.Buff_Power;

                quickslot[i, QSlot.Debuff_AirMag] = q.Debuff_AirMag;
				quickslot[i, QSlot.Debuff_Void] = q.Debuff_Void;

                quickslot[i, QSlot.Optic] = q.Optic;
                quickslot[i, QSlot.Mount] = q.Mount;
                quickslot[i, QSlot.Grip] = q.Grip;
                quickslot[i, QSlot.Barrel] = q.Barrel;
			}
			
			magslot = _loadPlayer.magslot
			max_pocket = _loadPlayer.max_pocket
			for (var i = 0; i < array_length(_loadPlayer.mags); i++) {
			    var m = _loadPlayer.mags[i];

			    var inst = instance_create_layer(0, 0, "Instances", obj_pocket_mag);
			    inst.sprite_index = m.sprite;
			}	
				
			obj_inventory.inv._inventory = _loadPlayer.inventory
			nadeIndex = _loadPlayer.nadeIndex
			
			applied_mutation = []
			for (var i = 0; i < array_length(_loadPlayer.mutation); i++) {
				apply_mutation(_loadPlayer.mutation[i])
			}
			all_mutations = _loadPlayer.all_mutations
			
			applied_enemy_mutations = _loadPlayer.enemy_mutation
			
			cancer_phase = _loadPlayer.cancer_phase
			cancer_timer = _loadPlayer.cancer_timer
			
			time_elapsed = _loadPlayer.time_elapsed
			easymode = _loadPlayer.easymode
			
			if room == StartRoom {
			death_count = _loadPlayer.death_count
			}
			save_alarm = 5
        }
		global.sniper_revive = 2
    }
}
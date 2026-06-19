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

        var _player = instance_create_layer(
            0,
            0,
            "Instances",
            obj_player
        );

        with (obj_player) {
			x = _loadPlayer.x
			y = _loadPlayer.y
			
			room_goto(_loadPlayer.room)
			global.level = _loadPlayer.level
            hp = _loadPlayer.hp
            spd_mult = _loadPlayer.spd_mult;
            wID = _loadPlayer.wID;
			cash = _loadPlayer.cash;

            current_magazine[Caliber.Medium] = _loadPlayer.Medium;
            current_magazine[Caliber.Light] = _loadPlayer.Light;
            current_magazine[Caliber.Heavy] = _loadPlayer.Heavy;
            current_magazine[Caliber.Long] = _loadPlayer.Long;
            current_magazine[Caliber.Shell] = _loadPlayer.Shell;

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

                quickslot[i, QSlot.Debuff_AirMag] = q.Debuff_AirMag;

                quickslot[i, QSlot.Optic] = q.Optic;
                quickslot[i, QSlot.Mount] = q.Mount;
                quickslot[i, QSlot.Grip] = q.Grip;
                quickslot[i, QSlot.Barrel] = q.Barrel;
			}
			obj_inventory.inv._inventory = _loadPlayer.inventory
        }
    }
}
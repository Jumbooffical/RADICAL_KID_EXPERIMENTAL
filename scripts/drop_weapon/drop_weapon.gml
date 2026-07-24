function drop_weapon(_key, _slot) {
	if (busy) exit
	
	var key = _key
	if (keyboard_check_pressed(key)) || key == noone {
	if cursed {error_feedback() exit;}
	
	bolt_cycle = false
    // Drop firearm if it exists
    if (quickslot[_slot, QSlot.Gun] != noone) {
        var gunIndex = quickslot[_slot, QSlot.Gun];
        var gun = instance_create_depth(x, y, 0, weapon[gunIndex, GUN.ITEM_OBJECT]);
        gun.current_mag = quickslot[_slot, QSlot.LoadedAmmo];
		gun.full_auto = full_auto
		gun.mag = quickslot[_slot, QSlot.Mag]
		
		gun.overclocked = quickslot[_slot, QSlot.Buff_Overclocked]
		gun.taped = quickslot[_slot, QSlot.Buff_Taped]
		gun.smart = quickslot[_slot, QSlot.Buff_Smart]
		gun.heatseek = quickslot[_slot, QSlot.Buff_HeatSeek]
		
		gun.airmag = quickslot[_slot, QSlot.Debuff_AirMag]
		
		gun.image_xscale = obj_player.image_xscale

        // Reset slot
        quickslot[_slot, QSlot.Gun] = noone;
        quickslot[_slot, QSlot.LoadedAmmo] = 0;
		quickslot[_slot, QSlot.Mag] = noone;
		
		quickslot[_slot, QSlot.Buff_Overclocked] = 0;
		quickslot[_slot, QSlot.Buff_Taped] = 0;
		quickslot[_slot, QSlot.Buff_Smart] = 0;
		quickslot[_slot, QSlot.Buff_HeatSeek] = 0;
		
		quickslot[_slot, QSlot.Debuff_AirMag] = 0;
		
		kunai = 0
    }
	
	// Drop melee if slot 2 is occupied
    if (_slot == melee_quickslot) && (quickslot[_slot, QSlot.Melee] != ml.fist) {
        instance_create_depth(x, y, 0, melee[meleeIndex, MELEE.ITEM]);

        quickslot[melee_quickslot, QSlot.Melee] = ml.fist;
		meleeIndex = 0
    }
	
	if (_slot >= nade_quickslot) && (quickslot[_slot, QSlot.Nade] != noone) {
        instance_create_depth(x, y, 0, nade[nadeIndex, NADE.ITEM]);

        quickslot[selected_item, QSlot.Nade] = noone;
		nadeIndex = noone
    }
}}
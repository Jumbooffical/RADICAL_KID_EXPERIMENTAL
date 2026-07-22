function buff_description() {
	var mi = obj_player;

	if (mi.quickslot[mi.selected_item, QSlot.Buff_Taped]) > 0 {
	array_push(buff_list, {
		sprite: emergency_reload_icon,
		name: "EMERGENCY RELOAD",
		desc: "Double press reload to perform triple reload speed, last for " 
		+ string((mi.quickslot[mi.selected_item, QSlot.Buff_Taped])) + " reload",
		note: "Obtained from taped magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Buff_Taped])) + " rload"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Buff_Overclocked]) > 0 {
	array_push(buff_list, {
		sprite: overclock_icon,
		name: "OVERCLOCKED MAGAZINE!!!",
		desc: "Gun now have maximum firerate & velocity in " 
		+ string(mi.quickslot[mi.selected_item, QSlot.Buff_Overclocked]) + " reload",
		note: "Obtained from overclocked magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Buff_Overclocked])) + " rload"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Buff_Smart]) > 0 {
	array_push(buff_list, {
		sprite: smart_icon,
		name: "RETICLE CONTROLLED BULLET",
		desc: "Bullet automatically home on cursor",
		note: "Obtained from smart magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Buff_Smart])) + " rload"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Buff_HeatSeek]) > 0 {
	array_push(buff_list, {
		sprite: heatseek_icon,
		name: "HEATSEEKING BULLET",
		desc: "Bullet automatically target nearest enemy",
		note: "Obtained from heatseek magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Buff_HeatSeek])) + " rload"
		});
	}
	
	if (mi.MEND_stim_timer) > 0 {
	array_push(buff_list, {
		sprite: MEND_icon,
		name: "MEND",
		desc: "Healing Gain x2, Ignore all healing gain penalty",
		note: "Obtained from MEND stim",
		duration: display_duration(mi.MEND_stim_timer)
		});
	}
	
	if (mi.ZERK_stim_timer) > 0 {
	array_push(buff_list, {
		sprite: ZERK_icon,
		name: "ZERK",
		desc: "Pain fading slowly, pain now make you quicker",
		note: "Obtained from ZERK stim",
		duration: display_duration(mi.ZERK_stim_timer)
		});
	}
	
	if (mi.NOON_stim_timer) > 0 {
	array_push(buff_list, {
		sprite: NOON_icon,
		name: "NOON",
		desc: "Maximize aiming potential",
		note: "Obtained from NOON stim",
		duration: display_duration(mi.NOON_stim_timer)
		});
	}
	
	if (mi.CLAR_stim_count) > 0 {
	array_push(buff_list, {
		sprite: CLAR_icon,
		name: "CLAR",
		desc: "Next " + string(mi.CLAR_stim_count) + " reload have 2 additional magazine options",
		note: "Obtained from CLAR stim",
		duration: string(mi.CLAR_stim_count) + " rload"
		});
	}	
	
	if (mi.EPIK_stim_count) > 1 {
	array_push(buff_list, {
		sprite: EPIK_icon,
		name: "EPIK",
		desc: "Next " + string(mi.EPIK_stim_count) + " reload only offer rare or epic magazines",
		note: "Obtained from EPIK stim",
		duration: string(mi.EPIK_stim_count-1) + " rload"
		});
	}
	
	if (mi.DRUM_stim_count) > 0 {
	array_push(buff_list, {
		sprite: DRUM_icon,
		name: "DRUM",
		desc: "Next " + string(mi.DRUM_stim_count) + " reload have doubled magsize",
		note: "Obtained from DRUM stim",
		duration: string(mi.DRUM_stim_count) + " rload"
		});
	}	
	
	if (mi.UNDY_stim_timer) > 0 {
	array_push(buff_list, {
		sprite: UNDY_icon,
		name: "UNDY",
		desc: "Cannot die while HP is at 0",
		note: "Don't forget to heal afterward!",
		duration: display_duration(mi.UNDY_stim_timer)
		});
	}	
}
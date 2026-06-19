function buff_description() {
	var mi = obj_player;

	if (mi.quickslot[mi.selected_item, QSlot.Buff_Taped]) > 0 {
	array_push(buff_list, {
		sprite: emergency_reload_icon,
		name: "EMERGENCY RELOAD",
		desc: "Double press reload to perform triple reload speed, last for " 
		+ string((mi.quickslot[mi.selected_item, QSlot.Buff_Taped])) + " reload",
		note: "Obtained from taped magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Buff_Taped]))
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Buff_Overclocked]) > 0 {
	array_push(buff_list, {
		sprite: overclock_icon,
		name: "OVERCLOCKED MAGAZINE!!!",
		desc: "Gun now have maximum firerate & velocity in " 
		+ string(mi.quickslot[mi.selected_item, QSlot.Buff_Overclocked]) + " reload",
		note: "Obtained from overclocked magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Buff_Overclocked]))
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Buff_Smart]) > 0 {
	array_push(buff_list, {
		sprite: smart_icon,
		name: "RETICLE CONTROLLED BULLET",
		desc: "Bullet automatically home on cursor",
		note: "Obtained from smart magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Buff_Smart]))
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Buff_HeatSeek]) > 0 {
	array_push(buff_list, {
		sprite: heatseek_icon,
		name: "HEATSEEKING BULLET",
		desc: "Bullet automatically target nearest enemy",
		note: "Obtained from heatseek magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Buff_HeatSeek]))
		});
	}
}
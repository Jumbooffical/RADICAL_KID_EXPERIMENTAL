function is_loading_gun() {
    reload_timer--;
    reroll_magazine();
	
	if cursed { 
		if reload_timer == 300 {
		audio_play_sound(snd_cursed_buildup, 1, 0)
		}
	}
	
    if (reload_timer <= 0) && (done_selection) {
		if cursed {
		quickslot[selected_item, QSlot.Mag] = global.cursedmags[irandom(array_length(global.cursedmags) - 1)].sprite
		
			with instance_create_depth(mech_mag.x, mech_mag.y, -11, gui_afterimage) {
				sprite_index = obj_player.quickslot[obj_player.selected_item, QSlot.Mag]
			}
			
			if rng < 50 {
			audio_play_sound(snd_cursed0, 1, 0)
			} else {
			audio_play_sound(snd_cursed1, 1, 0)
			}
			obj_controller.glow = 0.8
		}
		
		cooldown = 30
		
        // Finish reload
		if gun_type == WeaponType.Shotgun {
			if quickslot[selected_item, QSlot.LoadedAmmo] < mag_size {
				current_magazine[reload_caliber]--;
				quickslot[selected_item, QSlot.LoadedAmmo]++
				start_reloading()
				exit;
			}
		} else {
			reload_amount = mag_size
	        quickslot[selected_item, QSlot.LoadedAmmo] += reload_amount;
		}
		
		if !free_mag {
			current_magazine[reload_caliber]--;
		}
		
		if obj_store_mag.sprite_index == spr_belt_printermag {
			obj_player.printed_ammo += 5
		}
		
        // Reset behavior
        reload_timer = 0;
		select_mag = false
		done_selection = false;
		done_storing = false
		free_mag = false
		
		reload_mult = 1
		
		is_reloading = false;
		burst_failure = false
		sound_alarm = 1
		burst_fired = 0;
	
		if (cursed) exit;
		if quickslot[selected_item, QSlot.Mag] == spr_overlockmag
		|| quickslot[selected_item, QSlot.Buff_Overclocked] > 0 {
			audio_play_sound(snd_overlocked, 1, 0, 2, 0, 1, 1)
			obj_controller.glow = 0.5
		}
		
		if quickslot[selected_item, QSlot.Mag] == spr_smartmag
		|| quickslot[selected_item, QSlot.Buff_Smart] > 0 {
			audio_play_sound(snd_smartmag, 1, 0, 1, 0, 1, 1)
			obj_controller.glow = 0.5
		}
		
		if quickslot[selected_item, QSlot.Mag] == spr_heatseekmag
		|| quickslot[selected_item, QSlot.Buff_HeatSeek] > 0 {
			audio_play_sound(snd_heatseek, 1, 0, 15, 0, 1, 1)
			obj_controller.glow = 0.5
		}	
    }
}
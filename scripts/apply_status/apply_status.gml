function apply_status(){
	
	if MEND_stim_timer > 0 {
		MEND_stim_timer--		
		heal_mult = 2
	}
	
	if immobilize_timer > 0 {
		immobilize_timer--
		spd_mult = spd_mult * 0.2
	}
	
	if ZERK_stim_timer > 0 {
		ZERK_stim_timer--
		pain_decay = 0.5
		global.bloodlust = global.bloodlust + (pain * 3)
	}
	
	if NOON_stim_timer > 0 {
		NOON_stim_timer--
		recoil_control = 99
		stat.ads_speed = 0.15
		velocity = velocity * 2
		magnify = 1.3
	}
	
	if UNDY_stim_timer > 0 {
		UNDY_stim_timer--
		
		beat_interval--
		if beat_interval < 0 {
		beat_interval = 40
		
			if hp <= 0 {
				beat_interval = 30
				audio_play_sound(snd_heartbeat, 1, 0, 3)
			} else {
				audio_play_sound(snd_heartbeat, 1, 0, 2)
			}
		}
		
	} else {
		with (obj_inventory) {
		var UNDY = inv.findItemById(spr_stim_UNDY);
		if (UNDY != -1)
		&& other.hp <= 0 {
			selected_inv = UNDY
			inv_use_consumable()
		}}
	}
	
	#region MAGAZINE
	CLAR_stim_count = clamp(CLAR_stim_count, 0, 99)
	if CLAR_stim_count > 0 {
		magslot = magslot + 2
	}
	
	DRUM_stim_count = clamp(DRUM_stim_count, 0, 99)
	if DRUM_stim_count > 0 {
		if gun_type != WeaponType.Shotgun {
		mag_size = mag_size * 2
		}
	}
	
	EPIK_stim_count = clamp(EPIK_stim_count, 0, 99)
	if EPIK_stim_count > 0 {
		rare_chance = 100
		epic_chance = 30
	}
	
	HEX_stim_count = clamp(HEX_stim_count, 0, 99)
	if HEX_stim_count > 0 {
		curse_chance = 100
	}
	#endregion
}
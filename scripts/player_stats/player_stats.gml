function player_default_stats(){

	image_speed = spd_mult 
	image_angle = 0
	current_spd = my_spd * spd_mult
	spd_mult = 2

	wID = par_gun.weaponIndex
	melee_quickslot = 0
	nade_quickslot = 6

	base_damage = weapon[wID, GUN.DAMAGE]
	stat.damage_output = base_damage + flat_damage_bonus

	firerate = weapon[wID, GUN.FIRE_DELAY]
	velocity = weapon[wID, GUN.VELOCITY]

	mag_size = weapon[wID, GUN.MAG_SIZE]
	magslot = weapon[wID, GUN.MAG_SLOT]

	noise = 1
	gun_pitch = 1

	gun_heat = quickslot[selected_item, QSlot.Heat]	
	stat.base_accuracy = weapon[wID, GUN.DEVIATION] / deviation
	current_accuracy = stat.base_accuracy * (gun_heat * heat_penalty)
	inaccuracy = random_range(-current_accuracy, current_accuracy);
	deviation = 1
	
	magnify = 1
	obj_reticle.sprite_index = spr_void

	reload_mult = 1
	recoil = weapon[wID, GUN.RECOIL]
	
	stat.recoil = recoil * recoil_control * recoil_penalty
	recoil_penalty = 1
	recoil_control = 1

	
	aiming_damage_mult = 1
	mult_react_time = 1

	bullet_type = par_bullet_SCAR
	gun_type = weapon[wID, GUN.TYPE]
	
	optic_shape = obj_dot
	stat.ads_speed = weapon[wID, GUN.CAM_TO_RETICLE_SPD]

	have_laser = false
	have_suppressor = false
	have_flashlight = false

	aiming_offsety = 0
	player_offset = 12
	is_aiming = false
	is_shooting = false
	
	allow_optic = weapon[wID, GUN.OPTIC]
	allow_mount = weapon[wID, GUN.MOUNT]
	allow_grip = weapon[wID, GUN.GRIP]
	allow_barrel = weapon[wID, GUN.BARREL]
	AttachmentModifier()

	apply_blinding()
	apply_knockback()
	attack_style = melee[meleeIndex, MELEE.STYLE]

	is_blind = false
	caliber_type = weapon[wID, GUN.CALIBER_ID]
	mouse_input = mouse_check_button_pressed(mb_left)

	MagazineModifier()

	if immobilize_timer > 0 {
	immobilize_timer--
	spd_mult = spd_mult / 1.8
	}

	if kunai > 100 {
	kunai = 100
	}

	if shuriken > 100 {
	shuriken = 100
	}

	if gore > 0 {
	gore -= 0.003
	}
	
	aiming_offsetx = 15
	

	if quickslot[selected_item, QSlot.Gun] != noone {		
		switch (gun_type) {
			case (WeaponType.Pistol):
				aiming_offsetx = -30
			break;
			
			case (WeaponType.SMG):
				if stat.ads_speed < 0.1 {
					stat.ads_speed = 0.1
				}
			break;
			
			case (WeaponType.Bolt):
			case (WeaponType.Shotgun):
				if bolt_cycle && mouse_check_button_released(mb_right) {
					audio_play_sound(weapon[quickslot[selected_item, QSlot.Gun], GUN.SFX_SWAPPING], 1, 0, 1, 0, 0.7)
					is_ejecting = true
					bolt_cycle = false
				}
				kalash_animation()
			break;
		}
		
		if gun_frame > 0
		&& gun_type != WeaponType.Bolt 
		&& gun_type != WeaponType.Shotgun {
			gun_frame = 0
		}
	}
	
	if !bolt_cycle {
	cooldown--
	}
	
	if hp >= maxhp {
	hp = max(0, maxhp)		// Prevent hp overflow when heal above maxhp
}

	if quickslot[selected_item, QSlot.Heat] > 0 {
	quickslot[selected_item, QSlot.Heat] -= 0.003
	}

	if quickslot[selected_item, QSlot.Heat] > 1 {
	quickslot[selected_item, QSlot.Heat] = 1
	}

	rolling_timer--;	
	if (rolling_timer <= 0) {
	my_state = state.idle
	rolling_timer = 0
	} 

	if roll_cd > 0 && (my_state == !state.rolling) {
		roll_cd--;
	}

	if (is_rolling) && (!my_state == state.moving) {
		rolling_timer = 0
	}
	
	if (!is_aiming) && (mouse_x > x) ? 1 : -1 {
	image_xscale = 1
	} else {
		image_xscale = -1
	}

	if mouse_input && (!player_armed) 
	&& (quickslot_type == Slot.Gun) && (selected_item != nade_quickslot) {
	swap_melee(noone)
	}
	
	if global.earthquake < 0 {
		is_falling = true
	}
	if is_falling {
		my_state = state.lost_balance
	}
	
	if global.dev_mode {
		spd_mult = 1
	}
	
	combo_mechanic()
}
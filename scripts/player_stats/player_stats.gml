function player_default_stats(){
	
	#region BASE PLAYER STAT
	maxhp = base.maxhp + extra_maxhp
	extra_maxhp = 0
	my_spd = 8;

	global.combo1_milestone = 3;
	global.max_combo_cd = 360;

	base.roll_cd = 30;

	base.reload_mult = 1;
	base.recoil_penalty = 1;
	base.deviation = 1;
	base.react_mult = 1;

	heat_mult = 1;

	uncommon_chance = 30;
	rare_chance = 12;
	epic_chance = 3;
	curse_chance = 1 * (gun_heat * 3)

	obj_camera.zoom = 2;
	#endregion
	apply_mutation_rework()
	apply_enemy_mutation_rework()
	
	nadeIndex = quickslot[selected_item, QSlot.Nade]
	if selected_item == melee_quickslot {
		meleeIndex = quickslot[selected_item, QSlot.Melee]
	}
	
	if hp < prev_hp {
	pain += (prev_hp - hp) * 0.01
	}
	prev_hp = hp
	pain = clamp(pain, 0, 1)
	pain_decay = 1
	heal_mult = base.heal_mult
	
	hp = clamp(hp, 0, maxhp)

	image_speed = spd_mult 
	image_angle = 0
	visible = true
	
	current_spd = my_spd * spd_mult
	spd_mult = 1

	if quickslot[selected_item, QSlot.Gun] != noone {
		wID = quickslot[selected_item, QSlot.Gun]
	}
	
	melee_quickslot = 0
	nade_quickslot = 6

	base_damage = weapon[wID, GUN.DAMAGE]
	stat.damage_output = base_damage + flat_damage_bonus

	firerate = weapon[wID, GUN.FIRE_DELAY]
	velocity = weapon[wID, GUN.VELOCITY]

	mag_size = weapon[wID, GUN.MAG_SIZE]
	printed_ammo = clamp(printed_ammo, 0, 75)
	
	magslot = weapon[wID, GUN.MAG_SLOT]
	magslot = clamp(magslot, 1, 7)

	noise = 1
	gun_pitch = 1
	gun_gain = 1

	stat.base_accuracy = weapon[wID, GUN.DEVIATION] * deviation
	current_accuracy = stat.base_accuracy * (gun_heat * heat_penalty)
	inaccuracy = random_range(-current_accuracy, current_accuracy);
	deviation = base.deviation
	
	magnify = 1
	obj_reticle.sprite_index = spr_void

	reload_mult = base.reload_mult
	recoil = weapon[wID, GUN.RECOIL]
	
	stat.recoil = (recoil * recoil_penalty) / recoil_control 
	recoil_penalty = base.recoil_penalty
	recoil_control = 1
	
	aiming_damage_mult = 1
	mult_react_time = base.react_mult

	bullet_type = par_bullet_SCAR
	gun_type = weapon[wID, GUN.TYPE]

	stat.ads_speed = weapon[wID, GUN.CAM_TO_RETICLE_SPD]

	have_laser = false
	have_suppressor = false
	have_flashlight = false

	aiming_offsety = 0
	player_offset = 12
	is_aiming = false
	is_shooting = false
	
	allow_optic = weapon[wID, GUN.ALLOW_OPTIC]
	allow_mount = weapon[wID, GUN.ALLOW_MOUNT]
	allow_grip = weapon[wID, GUN.ALLOW_GRIP]
	allow_barrel = weapon[wID, GUN.ALLOW_BARREL]
	
	if !player_armed {
		allow_optic = false
		allow_mount = false
		allow_grip = false
		allow_barrel = false
	}
	AttachmentModifier()

	apply_blinding()
	apply_knockback()
	attack_style = melee[meleeIndex, MELEE.STYLE]

	is_blind = false
	caliber_type = weapon[wID, GUN.CALIBER_ID]
	mouse_input = mouse_check_button_pressed(mb_left)

	MagazineModifier()

	kunai = clamp(kunai, 0, 100)
	shuriken = clamp(shuriken, 0, 100)

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

	if mouse_input && (!player_armed) && !open_inventory {
		if (quickslot_type == Slot.Gun)
		|| (nadeIndex == noone) && (selected_item == nade_quickslot) {
		swap_melee(noone)
		}
	}
	
	if global.earthquake < 0 {
		is_falling = true
	}
	if is_falling {
		my_state = state.lost_balance
	}
	
	combo_mechanic()
	cancer_system()
	apply_status()
	
	if room == Tutorial {
		uncommon_chance = 0
		rare_chance = 0
		epic_chance = 0
		curse_chance = 0
	}
	
	if global.dev_mode {
		hp = 999
		spd_mult = 2
	}
	
	if cursed && current_magazine[weapon[wID, GUN.CALIBER_ID]] == 0 {
		current_magazine[weapon[wID, GUN.CALIBER_ID]] = 1
	}
	slot_input_delay--
}
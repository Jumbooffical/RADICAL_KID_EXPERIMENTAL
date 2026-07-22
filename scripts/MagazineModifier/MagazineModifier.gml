function MagazineModifier() {
	switch (quickslot[selected_item, QSlot.Mag]) {
		#region Common
		case spr_mag:
			mag_size = weapon[wID, GUN.MAG_SIZE]
		break;
		
		case spr_marksman_mag:
			recoil = weapon[wID, GUN.RECOIL] * 0.5
			deviation = deviation + 0.25
			aiming_damage_mult = 1.25
		break;
		
		case spr_overpressure:
			bullet_type = obj_overpressure_bullet
		break;
		
		case spr_rubber_jacket:
			bullet_type = obj_deflective_bullet
			max_ricochet = 2
			ricochet_accuracy = 0
		break;
		
		#endregion
		
		#region Uncommon		
		case spr_extmag:
			mag_size = weapon[wID, GUN.MAG_SIZE] + 20
			reload_mult = 0.8
		break;
		
		case spr_taped2:
			if !is_reloading {
				quickslot[selected_item, QSlot.Buff_Taped] = 1		
			}
		break;
		
		case spr_corrosive_mag:
			stat.damage_output = stat.damage_output * 1.25
		break;
		
		case spr_belt_printermag:
			mag_size = weapon[wID, GUN.MAG_SIZE] * 1.1 + printed_ammo
			printed_ammo = 0
		break;
		
		#endregion
		
		#region Rare
		case spr_drummag:
			mag_size = weapon[wID, GUN.MAG_SIZE] + 50
			reload_mult = 0.5
		break;
		
		case spr_deflectivemag:
			bullet_type = obj_deflective_bullet
			max_ricochet = 10
			ricochet_accuracy = 30
		break;
		
		case spr_incendiarymag:
			bullet_type = obj_incendiary_bullet
			velocity = velocity * 1.5
			deviation = deviation - 0.5
			noise = 0.5
			gun_pitch = 0.4
			
			stat.damage_output = stat.damage_output * 0.5
			firerate = firerate * 1.5
		break;
		
		case spr_flash_shieldmag:
			firerate = firerate * 1.25
		break;
		#endregion
		
		#region Epic
		case spr_overlockmag:
			if !is_reloading {
				quickslot[selected_item, QSlot.Buff_Overclocked] = 2		
			}
			mag_size = weapon[wID, GUN.MAG_SIZE] * 3
		break;
		
		case spr_smartmag:
			if !is_reloading {
				quickslot[selected_item, QSlot.Buff_Smart] = 1
			}
			velocity = velocity / 1.5
		break;
		
		case spr_heatseekmag:
			if !is_reloading {
				quickslot[selected_item, QSlot.Buff_HeatSeek] = 1
			}
		break;
		#endregion
		
		#region Cursed!
		case spr_glass_bullet:
		//Hardcode when it won't accept magsize = 1	
			if quickslot[selected_item, QSlot.LoadedAmmo] > 1 {
			quickslot[selected_item, QSlot.LoadedAmmo] = 1
			}
			stat.damage_output = stat.damage_output * 3
			noise = 1.3
		break;
		
		case spr_air_mag:
			if !is_reloading {
			quickslot[selected_item, QSlot.Debuff_AirMag] = 3
			hardcode_airmag = true
			}
			
			if hardcode_airmag {
			quickslot[selected_item, QSlot.LoadedAmmo] = 999
			hardcode_airmag = false
			}
		break;
		
		case spr_stasis_mag:
			firerate = firerate / 2
		break;
		
		case spr_trackless_mag:
			stat.damage_output = stat.damage_output / 2
		break;
		
		case spr_blackjack_mag:
			burst_blackjack()
			firerate = firerate * 1.25
		break;
	}
	
	if quickslot[selected_item, QSlot.Buff_Overclocked] > 0 {
	firerate = 0.1
	}
	
	if quickslot[selected_item, QSlot.Debuff_AirMag] > 0 {
	mag_size = 999
	stat.damage_output = 0
	noise = 0.01
	have_suppressor = true
	quickslot[selected_item, QSlot.Heat] = 0
	}
}
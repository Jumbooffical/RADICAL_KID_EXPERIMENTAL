	#region mp5	
	weapon[wp.mp5, GUN.DAMAGE] = 13
	weapon[wp.mp5, GUN.VELOCITY] = 35
	weapon[wp.mp5, GUN.BULLET_COUNT] = 1
	weapon[wp.mp5, GUN.FIRE_DELAY] = 4
	
	weapon[wp.mp5, GUN.DEVIATION] = 9
	weapon[wp.mp5, GUN.CAM_TO_RETICLE_SPD] = 0.07
	weapon[wp.mp5, GUN.RECOIL] = 3

	weapon[wp.mp5, GUN.MAG_SIZE] = 30
	weapon[wp.mp5, GUN.MAG_SLOT] = 3	
	weapon[wp.mp5, GUN.RELOAD_DELAY] = 155
	weapon[wp.mp5, GUN.SPD_MULT_PENALTY] = 0.4
	#endregion	
	
	
	
	weapon[wp.mp5, GUN.NAME] = "MP5"
	weapon[wp.mp5, GUN.DESCRIPTION] = "Light and modular"
	weapon[wp.mp5, GUN.SPRITE] = MP5
	weapon[wp.mp5, GUN.TYPE] = WeaponType.Pistol
	weapon[wp.mp5, GUN.PLAYER_SPRITE] = MP5_armed
	weapon[wp.mp5, GUN.HEATED_BARREL] = spr_void

	weapon[wp.mp5, GUN.OBJECT] = obj_mp5
	weapon[wp.mp5, GUN.ITEM_OBJECT] = obj_item_mp5
	weapon[wp.mp5, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.mp5, GUN.CALIBER_ID] = Caliber.Light

	weapon[wp.mp5, GUN.SFX_SHOOTING] = snd_mp5
	weapon[wp.mp5, GUN.SFX_SWAPPING] = snd_mp5_swap
	weapon[wp.mp5, GUN.SFX_RELOADING] = snd_mp5_re
	
	weapon[wp.mp5, GUN.OPTIC] = true
	weapon[wp.mp5, GUN.MOUNT] = true
	weapon[wp.mp5, GUN.GRIP] = true
	weapon[wp.mp5, GUN.BARREL] = true
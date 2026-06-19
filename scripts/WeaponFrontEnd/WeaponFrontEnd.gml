function WeaponFrontEnd() {
	weapon[wp.scar, GUN.NAME] = "SCAR-L"
	weapon[wp.scar, GUN.DESCRIPTION] = "Light and modular"	
	weapon[wp.scar, GUN.SPRITE] = BELG_SCAR
	weapon[wp.scar, GUN.TYPE] = WeaponType.AR
	weapon[wp.scar, GUN.PLAYER_SPRITE] = BELG_SCAR_armed
	weapon[wp.scar, GUN.HEATED_BARREL] = BELG_SCAR_armed_heated

	weapon[wp.scar, GUN.OBJECT] = obj_scar
	weapon[wp.scar, GUN.ITEM_OBJECT] = obj_item_scar
	weapon[wp.scar, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.scar, GUN.CALIBER_ID] = Caliber.Medium

	weapon[wp.scar, GUN.SFX_SHOOTING] = snd_scar
	weapon[wp.scar, GUN.SFX_SWAPPING] = snd_scar_swap
	weapon[wp.scar, GUN.SFX_RELOADING] = snd_scar_re
	
	weapon[wp.scar, GUN.OPTIC] = true
	weapon[wp.scar, GUN.MOUNT] = true
	weapon[wp.scar, GUN.GRIP] = true
	weapon[wp.scar, GUN.BARREL] = true
	
	
	weapon[wp.uzi, GUN.NAME] = "UZI"
	weapon[wp.uzi, GUN.DESCRIPTION] = "Fast firerate, inaccurate"		
	weapon[wp.uzi, GUN.SPRITE] = ISR_UZI
	weapon[wp.uzi, GUN.TYPE] = WeaponType.SMG
	weapon[wp.uzi, GUN.PLAYER_SPRITE] = ISR_UZI_armed
	weapon[wp.uzi, GUN.HEATED_BARREL] = ISR_UZI_armed_heated

	weapon[wp.uzi, GUN.OBJECT] = obj_uzi
	weapon[wp.uzi, GUN.ITEM_OBJECT] = obj_item_uzi
	weapon[wp.uzi, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.uzi, GUN.CALIBER_ID] = Caliber.Light

	weapon[wp.uzi, GUN.SFX_SHOOTING] = snd_uzi
	weapon[wp.uzi, GUN.SFX_SWAPPING] = snd_uzi_swap
	weapon[wp.uzi, GUN.SFX_RELOADING] = snd_uzi_re
	
	weapon[wp.uzi, GUN.OPTIC] = true
	weapon[wp.uzi, GUN.MOUNT] = true
	weapon[wp.uzi, GUN.GRIP] = false
	weapon[wp.uzi, GUN.BARREL] = true
	
	
	weapon[wp.fal, GUN.NAME] = "FAL"
	weapon[wp.fal, GUN.DESCRIPTION] = "Pack a punch, hard to control, very fast reload"		
	weapon[wp.fal, GUN.SPRITE] = FAL
	weapon[wp.fal, GUN.TYPE] = WeaponType.AR
	weapon[wp.fal, GUN.PLAYER_SPRITE] = FAL_armed
	weapon[wp.fal, GUN.HEATED_BARREL] = FAL_armed_heated

	weapon[wp.fal, GUN.OBJECT] = obj_fal
	weapon[wp.fal, GUN.ITEM_OBJECT] = obj_item_fal
	weapon[wp.fal, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.fal, GUN.CALIBER_ID] = Caliber.Medium

	weapon[wp.fal, GUN.SFX_SHOOTING] = snd_fal
	weapon[wp.fal, GUN.SFX_SWAPPING] = snd_fal_swap
	weapon[wp.fal, GUN.SFX_RELOADING] = snd_fal_re
	
	weapon[wp.fal, GUN.OPTIC] = true
	weapon[wp.fal, GUN.MOUNT] = true
	weapon[wp.fal, GUN.GRIP] = true
	weapon[wp.fal, GUN.BARREL] = true
	
	
	weapon[wp.sawnoff, GUN.NAME] = "SAWN OFF"
	weapon[wp.sawnoff, GUN.DESCRIPTION] = "Cannot modded"
	weapon[wp.sawnoff, GUN.SPRITE] = SAWN_OFF
	weapon[wp.sawnoff, GUN.TYPE] = WeaponType.Pistol
	weapon[wp.sawnoff, GUN.PLAYER_SPRITE] = SAWN_OFF_armed
	weapon[wp.sawnoff, GUN.HEATED_BARREL] = spr_void

	weapon[wp.sawnoff, GUN.OBJECT] = obj_Sawn_odd
	weapon[wp.sawnoff, GUN.ITEM_OBJECT] = obj_item_Sawn_odd
	weapon[wp.sawnoff, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.sawnoff, GUN.CALIBER_ID] = Caliber.Shell

	weapon[wp.sawnoff, GUN.SFX_SHOOTING] = snd_sawnoff
	weapon[wp.sawnoff, GUN.SFX_SWAPPING] = snd_sawnoff_swap
	weapon[wp.sawnoff, GUN.SFX_RELOADING] = snd_sawnoff_re
	
	weapon[wp.sawnoff, GUN.OPTIC] = false
	weapon[wp.sawnoff, GUN.MOUNT] = false
	weapon[wp.sawnoff, GUN.GRIP] = false
	weapon[wp.sawnoff, GUN.BARREL] = false
	
	
	weapon[wp.deagle, GUN.NAME] = "DEAGLE"
	weapon[wp.deagle, GUN.DESCRIPTION] = "Wristbreaker"
	weapon[wp.deagle, GUN.SPRITE] = Deagle
	weapon[wp.deagle, GUN.TYPE] = WeaponType.Pistol
	weapon[wp.deagle, GUN.PLAYER_SPRITE] = Deagle_armed
	weapon[wp.deagle, GUN.HEATED_BARREL] = spr_void

	weapon[wp.deagle, GUN.OBJECT] = obj_deagle
	weapon[wp.deagle, GUN.ITEM_OBJECT] = obj_item_deagle
	weapon[wp.deagle, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.deagle, GUN.CALIBER_ID] = Caliber.Shell

	weapon[wp.deagle, GUN.SFX_SHOOTING] = snd_deagle
	weapon[wp.deagle, GUN.SFX_SWAPPING] = snd_deagle_swap
	weapon[wp.deagle, GUN.SFX_RELOADING] = snd_deagle_re
	
	weapon[wp.deagle, GUN.OPTIC] = true
	weapon[wp.deagle, GUN.MOUNT] = false
	weapon[wp.deagle, GUN.GRIP] = false
	weapon[wp.deagle, GUN.BARREL] = false
	
	
	weapon[wp.ss2, GUN.NAME] = "SS2"
	weapon[wp.ss2, GUN.DESCRIPTION] = "Pindad"		
	weapon[wp.ss2, GUN.SPRITE] = SS2
	weapon[wp.ss2, GUN.TYPE] = WeaponType.AR
	weapon[wp.ss2, GUN.PLAYER_SPRITE] = SS2_armed
	weapon[wp.ss2, GUN.HEATED_BARREL] = SS2_armed_heated

	weapon[wp.ss2, GUN.OBJECT] = obj_ss2
	weapon[wp.ss2, GUN.ITEM_OBJECT] = obj_item_ss2
	weapon[wp.ss2, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.ss2, GUN.CALIBER_ID] = Caliber.Medium

	weapon[wp.ss2, GUN.SFX_SHOOTING] = snd_ss2
	weapon[wp.ss2, GUN.SFX_SWAPPING] = snd_ss2_swap
	weapon[wp.ss2, GUN.SFX_RELOADING] = snd_ss2_re
	
	weapon[wp.ss2, GUN.OPTIC] = true
	weapon[wp.ss2, GUN.MOUNT] = true
	weapon[wp.ss2, GUN.GRIP] = true
	weapon[wp.ss2, GUN.BARREL] = true
	
	
	weapon[wp.pkm, GUN.NAME] = "PKM"
	weapon[wp.pkm, GUN.DESCRIPTION] = "PKM Light machine gun"
	weapon[wp.pkm, GUN.SPRITE] = PKM
	weapon[wp.pkm, GUN.TYPE] = WeaponType.LMG
	weapon[wp.pkm, GUN.PLAYER_SPRITE] = PKM_armed
	weapon[wp.pkm, GUN.HEATED_BARREL] = PKM_armed_heated

	weapon[wp.pkm, GUN.OBJECT] = obj_PKM
	weapon[wp.pkm, GUN.ITEM_OBJECT] = obj_item_PKM
	weapon[wp.pkm, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.pkm, GUN.CALIBER_ID] = Caliber.Medium

	weapon[wp.pkm, GUN.SFX_SHOOTING] = snd_PKM
	weapon[wp.pkm, GUN.SFX_SWAPPING] = snd_PKM_swap
	weapon[wp.pkm, GUN.SFX_RELOADING] = snd_PKM_re
	
	weapon[wp.pkm, GUN.OPTIC] = true
	weapon[wp.pkm, GUN.MOUNT] = true
	weapon[wp.pkm, GUN.GRIP] = false
	weapon[wp.pkm, GUN.BARREL] = false
	
	
	
	weapon[wp.svd, GUN.NAME] = "SVD"
	weapon[wp.svd, GUN.DESCRIPTION] = "SVD Camo"	
	weapon[wp.svd, GUN.SPRITE] = SVDcamo		
	weapon[wp.svd, GUN.TYPE] = WeaponType.DMR
	weapon[wp.svd, GUN.PLAYER_SPRITE] = SVDcamo_armed
	weapon[wp.svd, GUN.HEATED_BARREL] = SVDcamo_heated

	weapon[wp.svd, GUN.OBJECT] = obj_svd
	weapon[wp.svd, GUN.ITEM_OBJECT] = obj_item_SVD
	weapon[wp.svd, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.svd, GUN.CALIBER_ID] = Caliber.Medium

	weapon[wp.svd, GUN.SFX_SHOOTING] = snd_SVD
	weapon[wp.svd, GUN.SFX_SWAPPING] = snd_SVD_swap
	weapon[wp.svd, GUN.SFX_RELOADING] = snd_SVD_re
	
	weapon[wp.svd, GUN.OPTIC] = true
	weapon[wp.svd, GUN.MOUNT] = true
	weapon[wp.svd, GUN.GRIP] = false
	weapon[wp.svd, GUN.BARREL] = true
	
	
	weapon[wp.ak, GUN.NAME] = "ak"
	weapon[wp.ak, GUN.DESCRIPTION] = "ak Camo"	
	weapon[wp.ak, GUN.SPRITE] = AK	
	weapon[wp.ak, GUN.TYPE] = WeaponType.AR
	weapon[wp.ak, GUN.PLAYER_SPRITE] = AK_armed
	weapon[wp.ak, GUN.HEATED_BARREL] = AK_armed_heated

	weapon[wp.ak, GUN.OBJECT] = obj_AK
	weapon[wp.ak, GUN.ITEM_OBJECT] = obj_item_AK
	weapon[wp.ak, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.ak, GUN.CALIBER_ID] = Caliber.Medium

	weapon[wp.ak, GUN.SFX_SHOOTING] = snd_AK
	weapon[wp.ak, GUN.SFX_SWAPPING] = snd_AK_swap
	weapon[wp.ak, GUN.SFX_RELOADING] = snd_AK_re
	
	weapon[wp.ak, GUN.OPTIC] = true
	weapon[wp.ak, GUN.MOUNT] = true
	weapon[wp.ak, GUN.GRIP] = true
	weapon[wp.ak, GUN.BARREL] = true
	
	
	weapon[wp.r700, GUN.NAME] = "r700"
	weapon[wp.r700, GUN.DESCRIPTION] = "r700 Camo"	
	weapon[wp.r700, GUN.SPRITE] = R700	
	weapon[wp.r700, GUN.TYPE] = WeaponType.Bolt
	weapon[wp.r700, GUN.PLAYER_SPRITE] = R700_armed
	weapon[wp.r700, GUN.HEATED_BARREL] = R700_armed

	weapon[wp.r700, GUN.OBJECT] = obj_r700
	weapon[wp.r700, GUN.ITEM_OBJECT] = obj_item_r700
	weapon[wp.r700, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.r700, GUN.CALIBER_ID] = Caliber.Medium

	weapon[wp.r700, GUN.SFX_SHOOTING] = snd_r700
	weapon[wp.r700, GUN.SFX_SWAPPING] = snd_r700_swap
	weapon[wp.r700, GUN.SFX_RELOADING] = snd_r700_re
	
	weapon[wp.r700, GUN.OPTIC] = true
	weapon[wp.r700, GUN.MOUNT] = true
	weapon[wp.r700, GUN.GRIP] = false
	weapon[wp.r700, GUN.BARREL] = true
	
	
	weapon[wp.m870, GUN.NAME] = "m870"
	weapon[wp.m870, GUN.DESCRIPTION] = "m870 Camo"	
	weapon[wp.m870, GUN.SPRITE] = M870	
	weapon[wp.m870, GUN.TYPE] = WeaponType.Shotgun
	weapon[wp.m870, GUN.PLAYER_SPRITE] = M870_armed
	weapon[wp.m870, GUN.HEATED_BARREL] = M870_armed

	weapon[wp.m870, GUN.OBJECT] = obj_m870
	weapon[wp.m870, GUN.ITEM_OBJECT] = obj_item_m870
	weapon[wp.m870, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.m870, GUN.CALIBER_ID] = Caliber.Shell

	weapon[wp.m870, GUN.SFX_SHOOTING] = snd_m870
	weapon[wp.m870, GUN.SFX_SWAPPING] = snd_m870_swap
	weapon[wp.m870, GUN.SFX_RELOADING] = snd_m870_re
	
	weapon[wp.m870, GUN.OPTIC] = true
	weapon[wp.m870, GUN.MOUNT] = false
	weapon[wp.m870, GUN.GRIP] = false
	weapon[wp.m870, GUN.BARREL] = false
	
	
	weapon[wp.m1911, GUN.NAME] = "M1911"
	weapon[wp.m1911, GUN.DESCRIPTION] = "chambered in 45acp"
	weapon[wp.m1911, GUN.SPRITE] = M1911
	weapon[wp.m1911, GUN.TYPE] = WeaponType.Pistol
	weapon[wp.m1911, GUN.PLAYER_SPRITE] = M1911_armed
	weapon[wp.m1911, GUN.HEATED_BARREL] = spr_void

	weapon[wp.m1911, GUN.OBJECT] = obj_m1911
	weapon[wp.m1911, GUN.ITEM_OBJECT] = obj_item_m1911
	weapon[wp.m1911, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.m1911, GUN.CALIBER_ID] = Caliber.Light

	weapon[wp.m1911, GUN.SFX_SHOOTING] = snd_m1911
	weapon[wp.m1911, GUN.SFX_SWAPPING] = snd_m1911_swap
	weapon[wp.m1911, GUN.SFX_RELOADING] = snd_m1911_re
	
	weapon[wp.m1911, GUN.OPTIC] = false
	weapon[wp.m1911, GUN.MOUNT] = false
	weapon[wp.m1911, GUN.GRIP] = false
	weapon[wp.m1911, GUN.BARREL] = true
	
	
	weapon[wp.model19, GUN.NAME] = "Model19"
	weapon[wp.model19, GUN.DESCRIPTION] = "chambered in .357 magnum"
	weapon[wp.model19, GUN.SPRITE] = Model19
	weapon[wp.model19, GUN.TYPE] = WeaponType.Pistol
	weapon[wp.model19, GUN.PLAYER_SPRITE] = Model19_armed
	weapon[wp.model19, GUN.HEATED_BARREL] = spr_void

	weapon[wp.model19, GUN.OBJECT] = obj_model19
	weapon[wp.model19, GUN.ITEM_OBJECT] = obj_item_model19
	weapon[wp.model19, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.model19, GUN.CALIBER_ID] = Caliber.Light

	weapon[wp.model19, GUN.SFX_SHOOTING] = snd_model19
	weapon[wp.model19, GUN.SFX_SWAPPING] = snd_model19_swap
	weapon[wp.model19, GUN.SFX_RELOADING] = snd_model19_re
	
	weapon[wp.model19, GUN.OPTIC] = false
	weapon[wp.model19, GUN.MOUNT] = false
	weapon[wp.model19, GUN.GRIP] = false
	weapon[wp.model19, GUN.BARREL] = true
	
	
	weapon[wp.mp5, GUN.NAME] = "MP5"
	weapon[wp.mp5, GUN.DESCRIPTION] = "Limited modular"
	weapon[wp.mp5, GUN.SPRITE] = MP5
	weapon[wp.mp5, GUN.TYPE] = WeaponType.SMG
	weapon[wp.mp5, GUN.PLAYER_SPRITE] = MP5_armed
	weapon[wp.mp5, GUN.HEATED_BARREL] = spr_void

	weapon[wp.mp5, GUN.OBJECT] = obj_mp5
	weapon[wp.mp5, GUN.ITEM_OBJECT] = obj_item_mp5
	weapon[wp.mp5, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.mp5, GUN.CALIBER_ID] = Caliber.Light

	weapon[wp.mp5, GUN.SFX_SHOOTING] = snd_mp5
	weapon[wp.mp5, GUN.SFX_SWAPPING] = snd_mp5_swap
	weapon[wp.mp5, GUN.SFX_RELOADING] = snd_mp5_re
	
	weapon[wp.mp5, GUN.OPTIC] = false
	weapon[wp.mp5, GUN.MOUNT] = false
	weapon[wp.mp5, GUN.GRIP] = false
	weapon[wp.mp5, GUN.BARREL] = true
}
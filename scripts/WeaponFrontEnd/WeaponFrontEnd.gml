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
	
	weapon[wp.scar, GUN.ALLOW_OPTIC] = true
	weapon[wp.scar, GUN.ALLOW_MOUNT] = true
	weapon[wp.scar, GUN.ALLOW_GRIP] = true
	weapon[wp.scar, GUN.ALLOW_BARREL] = true
	
	
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
	
	weapon[wp.uzi, GUN.ALLOW_OPTIC] = true
	weapon[wp.uzi, GUN.ALLOW_MOUNT] = true
	weapon[wp.uzi, GUN.ALLOW_GRIP] = false
	weapon[wp.uzi, GUN.ALLOW_BARREL] = true
	
	
	weapon[wp.fal, GUN.NAME] = "FAL"
	weapon[wp.fal, GUN.DESCRIPTION] = "Pack a punch, hard to control, very fast reload"		
	weapon[wp.fal, GUN.SPRITE] = FAL
	weapon[wp.fal, GUN.TYPE] = WeaponType.AR
	weapon[wp.fal, GUN.PLAYER_SPRITE] = FAL_armed
	weapon[wp.fal, GUN.HEATED_BARREL] = FAL_armed_heated

	weapon[wp.fal, GUN.OBJECT] = obj_fal
	weapon[wp.fal, GUN.ITEM_OBJECT] = obj_item_fal
	weapon[wp.fal, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.fal, GUN.CALIBER_ID] = Caliber.Heavy

	weapon[wp.fal, GUN.SFX_SHOOTING] = snd_fal
	weapon[wp.fal, GUN.SFX_SWAPPING] = snd_fal_swap
	weapon[wp.fal, GUN.SFX_RELOADING] = snd_fal_re
	
	weapon[wp.fal, GUN.ALLOW_OPTIC] = true
	weapon[wp.fal, GUN.ALLOW_MOUNT] = true
	weapon[wp.fal, GUN.ALLOW_GRIP] = true
	weapon[wp.fal, GUN.ALLOW_BARREL] = true
	
	
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
	
	weapon[wp.sawnoff, GUN.ALLOW_OPTIC] = false
	weapon[wp.sawnoff, GUN.ALLOW_MOUNT] = false
	weapon[wp.sawnoff, GUN.ALLOW_GRIP] = false
	weapon[wp.sawnoff, GUN.ALLOW_BARREL] = false
	
	
	weapon[wp.deagle, GUN.NAME] = "DEAGLE"
	weapon[wp.deagle, GUN.DESCRIPTION] = "Wristbreaker"
	weapon[wp.deagle, GUN.SPRITE] = Deagle
	weapon[wp.deagle, GUN.TYPE] = WeaponType.Pistol
	weapon[wp.deagle, GUN.PLAYER_SPRITE] = Deagle_armed
	weapon[wp.deagle, GUN.HEATED_BARREL] = spr_void

	weapon[wp.deagle, GUN.OBJECT] = obj_deagle
	weapon[wp.deagle, GUN.ITEM_OBJECT] = obj_item_deagle
	weapon[wp.deagle, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.deagle, GUN.CALIBER_ID] = Caliber.Heavy

	weapon[wp.deagle, GUN.SFX_SHOOTING] = snd_deagle
	weapon[wp.deagle, GUN.SFX_SWAPPING] = snd_deagle_swap
	weapon[wp.deagle, GUN.SFX_RELOADING] = snd_deagle_re
	
	weapon[wp.deagle, GUN.ALLOW_OPTIC] = true
	weapon[wp.deagle, GUN.ALLOW_MOUNT] = false
	weapon[wp.deagle, GUN.ALLOW_GRIP] = false
	weapon[wp.deagle, GUN.ALLOW_BARREL] = false
	
	
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
	
	weapon[wp.ss2, GUN.ALLOW_OPTIC] = true
	weapon[wp.ss2, GUN.ALLOW_MOUNT] = true
	weapon[wp.ss2, GUN.ALLOW_GRIP] = true
	weapon[wp.ss2, GUN.ALLOW_BARREL] = true
	
	
	weapon[wp.pkm, GUN.NAME] = "PKM"
	weapon[wp.pkm, GUN.DESCRIPTION] = "PKM Light machine gun"
	weapon[wp.pkm, GUN.SPRITE] = PKM
	weapon[wp.pkm, GUN.TYPE] = WeaponType.LMG
	weapon[wp.pkm, GUN.PLAYER_SPRITE] = PKM_armed
	weapon[wp.pkm, GUN.HEATED_BARREL] = PKM_armed_heated

	weapon[wp.pkm, GUN.OBJECT] = obj_PKM
	weapon[wp.pkm, GUN.ITEM_OBJECT] = obj_item_PKM
	weapon[wp.pkm, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.pkm, GUN.CALIBER_ID] = Caliber.Heavy

	weapon[wp.pkm, GUN.SFX_SHOOTING] = snd_PKM
	weapon[wp.pkm, GUN.SFX_SWAPPING] = snd_PKM_swap
	weapon[wp.pkm, GUN.SFX_RELOADING] = snd_PKM_re
	
	weapon[wp.pkm, GUN.ALLOW_OPTIC] = true
	weapon[wp.pkm, GUN.ALLOW_MOUNT] = true
	weapon[wp.pkm, GUN.ALLOW_GRIP] = false
	weapon[wp.pkm, GUN.ALLOW_BARREL] = false
	
	
	
	weapon[wp.svd, GUN.NAME] = "SVD"
	weapon[wp.svd, GUN.DESCRIPTION] = "SVD Camo"	
	weapon[wp.svd, GUN.SPRITE] = SVDcamo		
	weapon[wp.svd, GUN.TYPE] = WeaponType.DMR
	weapon[wp.svd, GUN.PLAYER_SPRITE] = SVDcamo_armed
	weapon[wp.svd, GUN.HEATED_BARREL] = SVDcamo_heated

	weapon[wp.svd, GUN.OBJECT] = obj_svd
	weapon[wp.svd, GUN.ITEM_OBJECT] = obj_item_SVD
	weapon[wp.svd, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.svd, GUN.CALIBER_ID] = Caliber.Long

	weapon[wp.svd, GUN.SFX_SHOOTING] = snd_SVD
	weapon[wp.svd, GUN.SFX_SWAPPING] = snd_SVD_swap
	weapon[wp.svd, GUN.SFX_RELOADING] = snd_SVD_re
	
	weapon[wp.svd, GUN.ALLOW_OPTIC] = true
	weapon[wp.svd, GUN.ALLOW_MOUNT] = true
	weapon[wp.svd, GUN.ALLOW_GRIP] = false
	weapon[wp.svd, GUN.ALLOW_BARREL] = true
	
	
	weapon[wp.ak, GUN.NAME] = "AK"
	weapon[wp.ak, GUN.DESCRIPTION] = "Powerful and modular"	
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
	
	weapon[wp.ak, GUN.ALLOW_OPTIC] = true
	weapon[wp.ak, GUN.ALLOW_MOUNT] = true
	weapon[wp.ak, GUN.ALLOW_GRIP] = true
	weapon[wp.ak, GUN.ALLOW_BARREL] = true
	
	
	weapon[wp.r700, GUN.NAME] = "R700"
	weapon[wp.r700, GUN.DESCRIPTION] = "Light & accurate"	
	weapon[wp.r700, GUN.SPRITE] = R700	
	weapon[wp.r700, GUN.TYPE] = WeaponType.Bolt
	weapon[wp.r700, GUN.PLAYER_SPRITE] = R700_armed
	weapon[wp.r700, GUN.HEATED_BARREL] = R700_armed

	weapon[wp.r700, GUN.OBJECT] = obj_r700
	weapon[wp.r700, GUN.ITEM_OBJECT] = obj_item_r700
	weapon[wp.r700, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.r700, GUN.CALIBER_ID] = Caliber.Long

	weapon[wp.r700, GUN.SFX_SHOOTING] = snd_r700
	weapon[wp.r700, GUN.SFX_SWAPPING] = snd_r700_swap
	weapon[wp.r700, GUN.SFX_RELOADING] = snd_r700_re
	
	weapon[wp.r700, GUN.ALLOW_OPTIC] = true
	weapon[wp.r700, GUN.ALLOW_MOUNT] = true
	weapon[wp.r700, GUN.ALLOW_GRIP] = false
	weapon[wp.r700, GUN.ALLOW_BARREL] = true
	
	
	weapon[wp.m870, GUN.NAME] = "M870"
	weapon[wp.m870, GUN.DESCRIPTION] = "Pump up"	
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
	
	weapon[wp.m870, GUN.ALLOW_OPTIC] = true
	weapon[wp.m870, GUN.ALLOW_MOUNT] = false
	weapon[wp.m870, GUN.ALLOW_GRIP] = false
	weapon[wp.m870, GUN.ALLOW_BARREL] = false
	
	
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
	
	weapon[wp.m1911, GUN.ALLOW_OPTIC] = false
	weapon[wp.m1911, GUN.ALLOW_MOUNT] = false
	weapon[wp.m1911, GUN.ALLOW_GRIP] = false
	weapon[wp.m1911, GUN.ALLOW_BARREL] = true
	
	
	weapon[wp.model19, GUN.NAME] = "Model19"
	weapon[wp.model19, GUN.DESCRIPTION] = "Chambered in .357 magnum"
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
	
	weapon[wp.model19, GUN.ALLOW_OPTIC] = false
	weapon[wp.model19, GUN.ALLOW_MOUNT] = false
	weapon[wp.model19, GUN.ALLOW_GRIP] = false
	weapon[wp.model19, GUN.ALLOW_BARREL] = true
	
	
	weapon[wp.mp5, GUN.NAME] = "MP5"
	weapon[wp.mp5, GUN.DESCRIPTION] = "Limited module"
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
	
	weapon[wp.mp5, GUN.ALLOW_OPTIC] = true
	weapon[wp.mp5, GUN.ALLOW_MOUNT] = false
	weapon[wp.mp5, GUN.ALLOW_GRIP] = false
	weapon[wp.mp5, GUN.ALLOW_BARREL] = true
	
		
	weapon[wp.aa12, GUN.NAME] = "AA12"
	weapon[wp.aa12, GUN.DESCRIPTION] = "Fully automatic"	
	weapon[wp.aa12, GUN.SPRITE] = AA12
	weapon[wp.aa12, GUN.TYPE] = WeaponType.Shotgun
	weapon[wp.aa12, GUN.PLAYER_SPRITE] = AA12_armed
	weapon[wp.aa12, GUN.HEATED_BARREL] = AA12_armed

	weapon[wp.aa12, GUN.OBJECT] = obj_aa12
	weapon[wp.aa12, GUN.ITEM_OBJECT] = obj_item_aa12
	weapon[wp.aa12, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.aa12, GUN.CALIBER_ID] = Caliber.Shell

	weapon[wp.aa12, GUN.SFX_SHOOTING] = snd_aa12
	weapon[wp.aa12, GUN.SFX_SWAPPING] = snd_sawnoff_swap
	weapon[wp.aa12, GUN.SFX_RELOADING] = snd_super90_re
	
	weapon[wp.aa12, GUN.ALLOW_OPTIC] = true
	weapon[wp.aa12, GUN.ALLOW_MOUNT] = true
	weapon[wp.aa12, GUN.ALLOW_GRIP] = false
	weapon[wp.aa12, GUN.ALLOW_BARREL] = true
	

	weapon[wp.mini_uzi, GUN.NAME] = "MINI UZI"
	weapon[wp.mini_uzi, GUN.DESCRIPTION] = "Faster firerate, very light"		
	weapon[wp.mini_uzi, GUN.SPRITE] = MINI_UZI
	weapon[wp.mini_uzi, GUN.TYPE] = WeaponType.Pistol
	weapon[wp.mini_uzi, GUN.PLAYER_SPRITE] = MINI_UZI_armed
	weapon[wp.mini_uzi, GUN.HEATED_BARREL] = MINI_UZI_armed

	weapon[wp.mini_uzi, GUN.OBJECT] = obj_mini_uzi
	weapon[wp.mini_uzi, GUN.ITEM_OBJECT] = obj_item_mini_uzi
	weapon[wp.mini_uzi, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.mini_uzi, GUN.CALIBER_ID] = Caliber.Light

	weapon[wp.mini_uzi, GUN.SFX_SHOOTING] = snd_mini_uzi
	weapon[wp.mini_uzi, GUN.SFX_SWAPPING] = snd_uzi_swap
	weapon[wp.mini_uzi, GUN.SFX_RELOADING] = snd_uzi_re
	
	weapon[wp.mini_uzi, GUN.ALLOW_OPTIC] = true
	weapon[wp.mini_uzi, GUN.ALLOW_MOUNT] = true
	weapon[wp.mini_uzi, GUN.ALLOW_GRIP] = false
	weapon[wp.mini_uzi, GUN.ALLOW_BARREL] = true	
	
	
	weapon[wp.db, GUN.NAME] = "DB"
	weapon[wp.db, GUN.DESCRIPTION] = "Cannot modded, less damage falloff"
	weapon[wp.db, GUN.SPRITE] = DB
	weapon[wp.db, GUN.TYPE] = WeaponType.Pistol
	weapon[wp.db, GUN.PLAYER_SPRITE] = DB_armed
	weapon[wp.db, GUN.HEATED_BARREL] = spr_void

	weapon[wp.db, GUN.OBJECT] = obj_db
	weapon[wp.db, GUN.ITEM_OBJECT] = obj_item_DB
	weapon[wp.db, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.db, GUN.CALIBER_ID] = Caliber.Shell

	weapon[wp.db, GUN.SFX_SHOOTING] = snd_db
	weapon[wp.db, GUN.SFX_SWAPPING] = snd_sawnoff_swap
	weapon[wp.db, GUN.SFX_RELOADING] = snd_sawnoff_re

	weapon[wp.db, GUN.ALLOW_OPTIC] = false
	weapon[wp.db, GUN.ALLOW_MOUNT] = false
	weapon[wp.db, GUN.ALLOW_GRIP] = false
	weapon[wp.db, GUN.ALLOW_BARREL] = false
	
	
	weapon[wp.akm_scrap, GUN.NAME] = "AKM scrape"
	weapon[wp.akm_scrap, GUN.DESCRIPTION] = "Cannot modded"	
	weapon[wp.akm_scrap, GUN.SPRITE] = AKM_scrap	
	weapon[wp.akm_scrap, GUN.TYPE] = WeaponType.AR
	weapon[wp.akm_scrap, GUN.PLAYER_SPRITE] = AKM_scrap_armed
	weapon[wp.akm_scrap, GUN.HEATED_BARREL] = AKM_scrap_armed_heated

	weapon[wp.akm_scrap, GUN.OBJECT] = obj_AKM_scrap
	weapon[wp.akm_scrap, GUN.ITEM_OBJECT] = obj_item_AKM_scrap
	weapon[wp.akm_scrap, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.akm_scrap, GUN.CALIBER_ID] = Caliber.Medium

	weapon[wp.akm_scrap, GUN.SFX_SHOOTING] = snd_AKM_scrap
	weapon[wp.akm_scrap, GUN.SFX_SWAPPING] = snd_AK_swap
	weapon[wp.akm_scrap, GUN.SFX_RELOADING] = snd_AK_re
	
	weapon[wp.akm_scrap, GUN.ALLOW_OPTIC] = false
	weapon[wp.akm_scrap, GUN.ALLOW_MOUNT] = false
	weapon[wp.akm_scrap, GUN.ALLOW_GRIP] = false
	weapon[wp.akm_scrap, GUN.ALLOW_BARREL] = false
	
	
	weapon[wp.m249, GUN.NAME] = "M249"
	weapon[wp.m249, GUN.DESCRIPTION] = "M249 Light machine gun"
	weapon[wp.m249, GUN.SPRITE] = M249
	weapon[wp.m249, GUN.TYPE] = WeaponType.LMG
	weapon[wp.m249, GUN.PLAYER_SPRITE] = M249_armed
	weapon[wp.m249, GUN.HEATED_BARREL] = M249_armed_heated

	weapon[wp.m249, GUN.OBJECT] = obj_m249
	weapon[wp.m249, GUN.ITEM_OBJECT] = obj_item_M249
	weapon[wp.m249, GUN.PLAYER_AMMO] = par_bullet_SCAR
	weapon[wp.m249, GUN.CALIBER_ID] = Caliber.Heavy

	weapon[wp.m249, GUN.SFX_SHOOTING] = snd_M249
	weapon[wp.m249, GUN.SFX_SWAPPING] = snd_M249_swap
	weapon[wp.m249, GUN.SFX_RELOADING] = snd_M249_re
	
	weapon[wp.m249, GUN.ALLOW_OPTIC] = true
	weapon[wp.m249, GUN.ALLOW_MOUNT] = true
	weapon[wp.m249, GUN.ALLOW_GRIP] = false
	weapon[wp.m249, GUN.ALLOW_BARREL] = false	
}
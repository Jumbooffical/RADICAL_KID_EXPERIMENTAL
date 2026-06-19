function WeaponData(){
WeaponFrontEnd()
#region enum
enum wp {
scar,
uzi,
fal,
sawnoff,
ss2,
pkm,
svd,
ak,
deagle,
r700,
m870,
m1911,
model19,
mp5
}

	enum WeaponType {
	Pistol,
	AR,
	SMG,
	LMG,
	DMR,
	Bolt,
	Shotgun
	}
	
	enum Caliber {
	Medium,
	Light,
	Heavy,
	Long,
	Shell
	}
	
enum GUN {
    NAME,
	DESCRIPTION,
    SPRITE,
    TYPE,
    PLAYER_SPRITE,
	HEATED_BARREL,

    OBJECT,
    ITEM_OBJECT,
    PLAYER_AMMO,
	CALIBER_ID,

    SFX_SHOOTING,
    SFX_SWAPPING,
    SFX_RELOADING,
	
	OPTIC,
	MOUNT,
	GRIP,
	BARREL,

    DAMAGE,
    VELOCITY,
    AIM_ZOOM,
    RECOIL,
    BULLET_COUNT,
    FIRE_DELAY,
    CAM_TO_RETICLE_SPD,
    DEVIATION,
    SWAP_DELAY,

    MAG_SIZE,
	MAG_SLOT,
    RELOAD_DELAY,
    SPD_MULT_PENALTY
}
#endregion

	#region SCAR	
	weapon[wp.scar, GUN.DAMAGE] = 20
	weapon[wp.scar, GUN.VELOCITY] = 40
	weapon[wp.scar, GUN.BULLET_COUNT] = 1
	weapon[wp.scar, GUN.FIRE_DELAY] = 5
	
	weapon[wp.scar, GUN.DEVIATION] = 7
	weapon[wp.scar, GUN.CAM_TO_RETICLE_SPD] = 0.03
	weapon[wp.scar, GUN.RECOIL] = 5

	weapon[wp.scar, GUN.MAG_SIZE] = 30
	weapon[wp.scar, GUN.MAG_SLOT] = 3	
	weapon[wp.scar, GUN.RELOAD_DELAY] = 155
	weapon[wp.scar, GUN.SPD_MULT_PENALTY] = 0.3
	#endregion	
	
	#region UZI
	weapon[wp.uzi, GUN.DAMAGE] = 10
	weapon[wp.uzi, GUN.VELOCITY] = 35
	weapon[wp.uzi, GUN.BULLET_COUNT] = 1
	weapon[wp.uzi, GUN.FIRE_DELAY] = 2

	weapon[wp.uzi, GUN.DEVIATION] = 15
	weapon[wp.uzi, GUN.CAM_TO_RETICLE_SPD] = 0.08
	weapon[wp.uzi, GUN.RECOIL] = 4

	weapon[wp.uzi, GUN.MAG_SIZE] = 32
	weapon[wp.uzi, GUN.MAG_SLOT] = 3	
	weapon[wp.uzi, GUN.RELOAD_DELAY] = 100
	weapon[wp.uzi, GUN.SPD_MULT_PENALTY] = 0.5
	#endregion

	#region FAL
	weapon[wp.fal, GUN.DAMAGE] = 30
	weapon[wp.fal, GUN.VELOCITY] = 54
	weapon[wp.fal, GUN.BULLET_COUNT] = 1
	weapon[wp.fal, GUN.FIRE_DELAY] = 6

	weapon[wp.fal, GUN.DEVIATION] = 5
	weapon[wp.fal, GUN.CAM_TO_RETICLE_SPD] = 0.03
	weapon[wp.fal, GUN.RECOIL] = 7

	weapon[wp.fal, GUN.MAG_SIZE] = 22
	weapon[wp.fal, GUN.MAG_SLOT] = 3
	weapon[wp.fal, GUN.RELOAD_DELAY] = 90
	weapon[wp.fal, GUN.SPD_MULT_PENALTY] = 0.25
	#endregion

	#region SAWNOFF
	weapon[wp.sawnoff, GUN.DAMAGE] = 10
	weapon[wp.sawnoff, GUN.VELOCITY] = 33
	weapon[wp.sawnoff, GUN.BULLET_COUNT] = 10
	weapon[wp.sawnoff, GUN.FIRE_DELAY] = 30

	weapon[wp.sawnoff, GUN.DEVIATION] = 10
	weapon[wp.sawnoff, GUN.CAM_TO_RETICLE_SPD] = 0.1
	weapon[wp.sawnoff, GUN.RECOIL] = 22

	weapon[wp.sawnoff, GUN.MAG_SIZE] = 2
	weapon[wp.sawnoff, GUN.MAG_SLOT] = 2	
	weapon[wp.sawnoff, GUN.RELOAD_DELAY] = 210
	weapon[wp.sawnoff, GUN.SPD_MULT_PENALTY] = 0.7
	#endregion
	
	#region SS2
	weapon[wp.ss2, GUN.DAMAGE] = 15
	weapon[wp.ss2, GUN.VELOCITY] = 43
	weapon[wp.ss2, GUN.BULLET_COUNT] = 1
	weapon[wp.ss2, GUN.FIRE_DELAY] = 5

	weapon[wp.ss2, GUN.DEVIATION] = 6.5
	weapon[wp.ss2, GUN.CAM_TO_RETICLE_SPD] = 0.05
	weapon[wp.ss2, GUN.RECOIL] = 5

	weapon[wp.ss2, GUN.MAG_SIZE] = 33
	weapon[wp.ss2, GUN.MAG_SLOT] = 4		
	weapon[wp.ss2, GUN.RELOAD_DELAY] = 145
	weapon[wp.ss2, GUN.SPD_MULT_PENALTY] = 0.35
	#endregion
	
	#region PKM
	weapon[wp.pkm, GUN.DAMAGE] = 22
	weapon[wp.pkm, GUN.VELOCITY] = 40
	weapon[wp.pkm, GUN.BULLET_COUNT] = 1
	weapon[wp.pkm, GUN.FIRE_DELAY] = 5

	weapon[wp.pkm, GUN.DEVIATION] = 5.5
	weapon[wp.pkm, GUN.CAM_TO_RETICLE_SPD] = 0.08
	weapon[wp.pkm, GUN.RECOIL] = 12

	weapon[wp.pkm, GUN.MAG_SIZE] = 75
	weapon[wp.pkm, GUN.RELOAD_DELAY] = 305
	weapon[wp.pkm, GUN.SPD_MULT_PENALTY] = 0.1
	#endregion
	
	#region SVD
	weapon[wp.svd, GUN.DAMAGE] = 49
	weapon[wp.svd, GUN.VELOCITY] = 70
	weapon[wp.svd, GUN.BULLET_COUNT] = 1
	weapon[wp.svd, GUN.FIRE_DELAY] = 14

	weapon[wp.svd, GUN.DEVIATION] = 1.5
	weapon[wp.svd, GUN.CAM_TO_RETICLE_SPD] = 0.07
	weapon[wp.svd, GUN.RECOIL] = 9

	weapon[wp.svd, GUN.MAG_SIZE] = 10
	weapon[wp.svd, GUN.MAG_SLOT] = 3
	weapon[wp.svd, GUN.RELOAD_DELAY] = 150
	weapon[wp.svd, GUN.SPD_MULT_PENALTY] = 0.15
	#endregion
	
	#region AK
	weapon[wp.ak, GUN.DAMAGE] = 25
	weapon[wp.ak, GUN.VELOCITY] = 45
	weapon[wp.ak, GUN.BULLET_COUNT] = 1
	weapon[wp.ak, GUN.FIRE_DELAY] = 5.5
	
	weapon[wp.ak, GUN.DEVIATION] = 7.5
	weapon[wp.ak, GUN.CAM_TO_RETICLE_SPD] = 0.02
	weapon[wp.ak, GUN.RECOIL] = 6

	weapon[wp.ak, GUN.MAG_SIZE] = 30
	weapon[wp.ak, GUN.MAG_SLOT] = 3	
	weapon[wp.ak, GUN.RELOAD_DELAY] = 155
	weapon[wp.ak, GUN.SPD_MULT_PENALTY] = 0.3
	#endregion
	
	#region Deagle
	weapon[wp.deagle, GUN.DAMAGE] = 35
	weapon[wp.deagle, GUN.VELOCITY] = 50
	weapon[wp.deagle, GUN.BULLET_COUNT] = 1
	weapon[wp.deagle, GUN.FIRE_DELAY] = 7

	weapon[wp.deagle, GUN.DEVIATION] = 8
	weapon[wp.deagle, GUN.CAM_TO_RETICLE_SPD] = 0.1
	weapon[wp.deagle, GUN.RECOIL] = 28

	weapon[wp.deagle, GUN.MAG_SIZE] = 7
	weapon[wp.deagle, GUN.MAG_SLOT] = 1	
	weapon[wp.deagle, GUN.RELOAD_DELAY] = 210
	weapon[wp.deagle, GUN.SPD_MULT_PENALTY] = 0.7
	#endregion
	
	#region R700
	weapon[wp.r700, GUN.DAMAGE] = 49
	weapon[wp.r700, GUN.VELOCITY] = 90
	weapon[wp.r700, GUN.BULLET_COUNT] = 1
	weapon[wp.r700, GUN.FIRE_DELAY] = 45

	weapon[wp.r700, GUN.DEVIATION] = 1.4
	weapon[wp.r700, GUN.CAM_TO_RETICLE_SPD] = 0.04
	weapon[wp.r700, GUN.RECOIL] = 25.5

	weapon[wp.r700, GUN.MAG_SIZE] = 5
	weapon[wp.r700, GUN.MAG_SLOT] = 1
	weapon[wp.r700, GUN.RELOAD_DELAY] = 180
	weapon[wp.r700, GUN.SPD_MULT_PENALTY] = 0.15
	#endregion
	
	#region m870
	weapon[wp.m870, GUN.DAMAGE] = 8
	weapon[wp.m870, GUN.VELOCITY] = 50
	weapon[wp.m870, GUN.BULLET_COUNT] = 12
	weapon[wp.m870, GUN.FIRE_DELAY] = 35

	weapon[wp.m870, GUN.DEVIATION] = 3.4
	weapon[wp.m870, GUN.CAM_TO_RETICLE_SPD] = 0.04
	weapon[wp.m870, GUN.RECOIL] = 27.5

	weapon[wp.m870, GUN.MAG_SIZE] = 6
	weapon[wp.m870, GUN.MAG_SLOT] = 1
	weapon[wp.m870, GUN.RELOAD_DELAY] = 180
	weapon[wp.m870, GUN.SPD_MULT_PENALTY] = 0.12
	#endregion

	#region m1911	
	weapon[wp.m1911, GUN.DAMAGE] = 17
	weapon[wp.m1911, GUN.VELOCITY] = 35
	weapon[wp.m1911, GUN.BULLET_COUNT] = 1
	weapon[wp.m1911, GUN.FIRE_DELAY] = 11

	weapon[wp.m1911, GUN.DEVIATION] = 7
	weapon[wp.m1911, GUN.CAM_TO_RETICLE_SPD] = 0.1
	weapon[wp.m1911, GUN.RECOIL] = 8

	weapon[wp.m1911, GUN.MAG_SIZE] = 7
	weapon[wp.m1911, GUN.MAG_SLOT] = 1	
	weapon[wp.m1911, GUN.RELOAD_DELAY] = 130
	weapon[wp.m1911, GUN.SPD_MULT_PENALTY] = 0.8
	#endregion
	
	#region model19	
	weapon[wp.model19, GUN.DAMAGE] = 24
	weapon[wp.model19, GUN.VELOCITY] = 45
	weapon[wp.model19, GUN.BULLET_COUNT] = 1
	weapon[wp.model19, GUN.FIRE_DELAY] = 16

	weapon[wp.model19, GUN.DEVIATION] = 6
	weapon[wp.model19, GUN.CAM_TO_RETICLE_SPD] = 0.1
	weapon[wp.model19, GUN.RECOIL] = 13

	weapon[wp.model19, GUN.MAG_SIZE] = 6
	weapon[wp.model19, GUN.MAG_SLOT] = 1	
	weapon[wp.model19, GUN.RELOAD_DELAY] = 125
	weapon[wp.model19, GUN.SPD_MULT_PENALTY] = 0.7
	#endregion
	
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
	weapon[wp.mp5, GUN.RELOAD_DELAY] = 165
	weapon[wp.mp5, GUN.SPD_MULT_PENALTY] = 0.4
	#endregion	
}
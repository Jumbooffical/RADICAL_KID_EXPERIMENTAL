enum WeaponType {
	Pistol,
	AR,
	SMG
}

enum WeaponDataType {
		NAME,
		TYPE,
		ZOOMING,
		RECOIL,
		NUM_BULLETS_PER_SHOT,
		FIRE_DELAY_IN_FRAMES, // Rate of fire in frames, higher = slower
		CAMERA_SPEED, // Camera speed while aiming
		NUM_BULLETS_PER_BURST,
		BURST_FIRE_DELAY_IN_FRAMES, // Rate of fire in a burst in frames, higher = slower
		ACCURACY, // Accuracy, higher mean less accurate and more spread
		SWAP_TIME_IN_FRAMES, // Weapon change time in frames
		NUM_SHOTS_PER_MAGAZINE,
		RELOAD_DELAY_IN_FRAMES,
		SHOOTING_SPEED_PENALTY, //player speed shooting penalty
		OBJECT,
		OBJECT_DROPPED, // Drop weapon item
		SPRITE,
		SPRITE_DROPPED,
		SFX_SHOOTING,
		SFX_SWAPPING, //Swapping sound effect
		SFX_RELOAD, //Reload sound effect
}
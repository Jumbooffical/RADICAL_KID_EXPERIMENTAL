WeaponData()
weaponIndex = 0;

mouse_angle = 0;		// Direction from gun to mouse
knockback_angle = 1;	// Angle of knockback

ox = x;					// Original X and Y position
oy = y;

depth = -10;			// Put da gun on top of the player

weaponLength = sprite_get_bbox_right(weapon[weaponIndex, GUN.PLAYER_SPRITE]) - sprite_get_xoffset(weapon[weaponIndex, GUN.PLAYER_SPRITE])	// Put the muzzle on the tip of the gun's collision mask
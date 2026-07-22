WeaponData()
weaponIndex = 0;

mouse_angle = 0;
knockback_angle = 1;

ox = x;
oy = y;

depth = -10;

weaponLength = sprite_get_bbox_right(weapon[weaponIndex, GUN.PLAYER_SPRITE]) - sprite_get_xoffset(weapon[weaponIndex, GUN.PLAYER_SPRITE])	// Put the muzzle on the tip of the gun's collision mask
depth = 0
WeaponData()
wID = par_gun.weaponIndex
damage = weapon[wID, GUN.DAMAGE];	// Subtract hp when hit
velocity = weapon[wID, GUN.VELOCITY]

weaponLength = sprite_get_bbox_right(weapon[wID, GUN.PLAYER_SPRITE]) - sprite_get_xoffset(weapon[wID, GUN.PLAYER_SPRITE])
visible = false

ricochet_count = 0
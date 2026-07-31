function mag_description(){
switch (other.sprite_index) {
        case spr_mag:
            desc = "Default Mag"
			desc2 = "No special effect"
        break;

        case spr_drummag:
            desc = "Drum Magazine"
			desc2 = "+50 Mag Size \nNext reload speed is 33% slower"
        break;

        case spr_taped2:
            desc = "Taped Magazine"
			desc2 = "Allow emergency reload once (double press reload) \nEmergency reload grant triple reload speed"
        break;

        case spr_rngmag:
			desc = "Random Mags"
			desc2 = "Upon click, get random mag \nLoad that mag when reload timer ran out"
        break;
		
		case spr_overlockmag:
			desc = "OVERLOCKING Magazine"
			desc2 = "OVERCLOCK the gun and +300% magsize until next 2 reload \n"
			draw_text_colour(x + 50, y + 20, "!!!OVERCLOCKED!!!", 
			c_red, c_red, c_red, c_red, irandom_range(0.5, 1))
		break;
		
		case spr_smartmag:
			desc = "Smart Magazine"
			desc2 = "Velocity -33%, Reticle controlled projectile \nprojectile slowly disappear"
		break;
		
		case spr_heatseekmag:
			desc = "Heatseeking Magazine"
			desc2 = "Only targetting nearest enemy"
		break;
	
		case spr_overpressure:
			desc = "Overpressure Magazine"
			desc2 = "Gun recoil knockback self \n Shot knockback on impact, +25% velocity"
		break;
		
		case spr_deflectivemag:
			desc = "Deflective Magazine"
			desc2 = "Ricochet 25 times, shot now ricochet all surface. \n-50% ricochet accuracy, Ricochet no longer losing power"
		break;
		
		case spr_marksman_mag:
			desc = "Marksman Magazine"
			desc2 = "Convert to semi auto, increase stability & velocity \n-25% hipfire damage, +25% aiming damage"
		break;
		
		case spr_extmag:
			desc = "Extended Magazine"
			desc2 = "+20 Mag Size \nNext reload is 20% slower"
		break;
		
		case spr_rubber_jacket:
			desc = "Full Rubber Jacket"
			desc2 = "-50% base damage, 100% ricochet accuracy \nAfter ricochet, bullet deal 200% damage instead"
		break;
		
		case spr_corrosive_mag:
			desc = "Corrosive Mag"
			desc2 = "-25% damage \nDowngrade an enemy's armor by 1 when hit"
		break;
		
		case spr_incendiarymag:
			desc = "Incendiary Mag"
			desc2 = "-50% damage and firerate \nBullet cause firework on impact"
		break;
		
		case spr_flash_shieldmag:
			desc = "Flash Shield Mag"
			desc2 = "-25% firerate \nConvert muzzle flash into a solid bulletproof \nshield "
		break;
		
		case spr_belt_printermag:
			desc = "Belt Printer"
			desc2 = "-50% Magsize \nIf this is in pocket slot, increase \nBelt Printer Magsize by 5 per reload \n\nCurrent ammo printed: " + string(obj_player.printed_ammo) + "/75"
		break;
		
		case spr_glass_bullet:
			draw_text_blend(x + 50, y - 30, "Cursed, Glass Bullet", c_red)
			draw_text_blend(x + 50, y, "Magsize = 1, +300% damage", c_red)
		break;
		
		case spr_air_mag:
			draw_text_blend(x + 50, y - 30, "Cursed, Air Magazine", c_red)
			draw_text_blend(x + 50, y, "Magsize = 999 \nShoot air bullet which deal no damage until next 3 reload \nAllow reloading while cursed, does not consume mag", c_red)
		break;
		
		case spr_stasis_mag:
			draw_text_blend(x + 50, y - 30, "Cursed, Stasis Magazine", c_red)
			draw_text_blend(x + 50, y, "Firerate +50% \nBullet remain harmless & motionless until reload other mag", c_red)
		break;
		
		case spr_trackless_mag:
			draw_text_blend(x + 50, y - 30, "Cursed, Trackless Magazine", c_red)
			draw_text_blend(x + 50, y, "Halves damage \nBullet seek random enemy", c_red)
		break;
		
		case spr_blackjack_mag:
			draw_text_blend(x + 50, y - 30, "Cursed, Blackjack Magazine", c_red)
			draw_text_blend(x + 50, y, "25%+ firerate, infinite magsize \nStart spraying then release the trigger at EXACTLY 21st shot \nwill lift the curse, failure will cost your blood!", c_red)
		break;
	}
	
	if object_index == obj_store_mag {
		draw_text(x + 170, y - 30, desc)
		draw_text(x + 170, y, desc2)
	} else {
		draw_text(x + 50, y - 30, desc)
		draw_text(x + 50, y, desc2)
	}
	
	if obj_player.quickslot[obj_player.selected_item, QSlot.Buff_Overclocked] > 0 {
	draw_text_colour(x + 50, y + 40, "!!!OVERCLOCKED!!!", c_red, c_red, c_red, c_red, irandom_range(0.5, 1))
	}
	
	mag_tooltip()
	
	var scale = 1.2
	image_xscale = scale
	image_yscale = scale
	image_angle = 5
}
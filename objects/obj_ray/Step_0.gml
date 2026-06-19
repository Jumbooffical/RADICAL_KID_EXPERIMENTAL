var mag = instance_nearest(x, y, mech_mag)
image_xscale = 1
image_yscale = 1
image_angle += 1
switch (mag.rarity) {
	case RARITY.COMMON:
	image_blend = c_white
	image_angle += 1
	break;
	
	case RARITY.UNCOMMON:
	image_blend = c_lime
	image_angle += 2.5
	break;
	
	case RARITY.RARE:
	image_xscale = 1.5
	image_yscale = 1.5
	image_blend = c_aqua
	image_angle += 5
	break;
	
	case RARITY.EPIC:
	image_xscale = 2
	image_yscale = 2
	image_blend = c_fuchsia
	image_angle += 10
	break;
}


if !obj_player.is_reloading || mag.sprite_index == spr_empty_mag_slot {
	instance_destroy()
}
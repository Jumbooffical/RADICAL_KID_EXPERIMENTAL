function check_rarity(){
 switch (sprite_index) {
        case spr_mag0:
            rarity = MAG_RARITY.COMMON
        break;

        case spr_drummag1:
            rarity = MAG_RARITY.RARE
        break;

        case spr_taped2:
			rarity = MAG_RARITY.UNCOMMON
        break;

        case spr_mag4_RANDOMIZED:
			rarity = MAG_RARITY.COMMON
        break;
		
		case spr_overlockingmag5:
			rarity = MAG_RARITY.EPIC
		break;
    }
}
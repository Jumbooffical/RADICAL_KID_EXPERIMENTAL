function MeleeFrontEnd(){
	melee[ml.fist, MELEE.NAME] = "Fists"	
	melee[ml.fist, MELEE.SPRITE] = spr_void
	melee[ml.fist, MELEE.ARMED_SPR] = noone;		
	melee[ml.fist, MELEE.ITEM] = spr_void
	melee[ml.fist, MELEE.ARMED_SPR] = player_fists
	melee[ml.fist, MELEE.ARMED_SPR_BLOODY] = player_fists
	
	melee[ml.fist, MELEE.STRIKE_SFX] = snd_fist
	melee[ml.fist, MELEE.HIT_SFX] = snd_fist_hit
	
	melee[ml.fist, MELEE.HANDED] = 2	
	melee[ml.fist, MELEE.STYLE] = animation.pummel
	
	
		
	melee[ml.knife, MELEE.NAME] = "KNIFE"			
	melee[ml.knife, MELEE.SPRITE] = knife				
	melee[ml.knife, MELEE.ARMED_SPR] = knife_armed
	melee[ml.knife, MELEE.ARMED_SPR_BLOODY] = knife_armed_bloody
	melee[ml.knife, MELEE.ITEM] = obj_item_knife
	
	melee[ml.knife, MELEE.STRIKE_SFX] = snd_knife
	melee[ml.knife, MELEE.HIT_SFX] = snd_knife_hit
	
	melee[ml.knife, MELEE.HANDED] = 1	
	melee[ml.knife, MELEE.STYLE] = animation.stab
	

	
	melee[ml.crude_axe, MELEE.NAME] = "CRUDE HATCHET"
	melee[ml.crude_axe, MELEE.SPRITE] = crude_hatchet
	melee[ml.crude_axe, MELEE.ARMED_SPR] = crude_hatchet_armed
	melee[ml.crude_axe, MELEE.ARMED_SPR_BLOODY] = crude_hatchet_armed_bloody
	melee[ml.crude_axe, MELEE.ITEM] = obj_item_axe
	
	melee[ml.crude_axe, MELEE.HANDED] = 1	
	melee[ml.crude_axe, MELEE.STYLE] = animation.swing
	
	melee[ml.crude_axe, MELEE.STRIKE_SFX] = snd_axe
	melee[ml.crude_axe, MELEE.HIT_SFX] = snd_axe_hit
	
	
	
	melee[ml.crude_spear, MELEE.NAME] = "CRUDE SPEAR"
	melee[ml.crude_spear, MELEE.SPRITE] = crude_spear
	melee[ml.crude_spear, MELEE.ARMED_SPR] = crude_spear_armed
	melee[ml.crude_spear, MELEE.ARMED_SPR_BLOODY] = crude_spear_armed_bloody
	melee[ml.crude_spear, MELEE.ITEM] = obj_item_spear
	
	melee[ml.crude_spear, MELEE.STRIKE_SFX] = snd_knife
	melee[ml.crude_spear, MELEE.HIT_SFX] = snd_knife_hit
	
	melee[ml.crude_spear, MELEE.HANDED] = 2	
	melee[ml.crude_spear, MELEE.STYLE] = animation.stab
	
	
	melee[ml.assassin_blade, MELEE.NAME] = "ASSASSIN'S BLADE"
	melee[ml.assassin_blade, MELEE.SPRITE] = assassin_blade
	melee[ml.assassin_blade, MELEE.ARMED_SPR] = assassin_blade
	melee[ml.assassin_blade, MELEE.ARMED_SPR_BLOODY] = assassin_blade
	melee[ml.assassin_blade, MELEE.ITEM] = noone
	
	melee[ml.assassin_blade, MELEE.STRIKE_SFX] = snd_knife
	melee[ml.assassin_blade, MELEE.HIT_SFX] = snd_knife_hit
	
	melee[ml.assassin_blade, MELEE.HANDED] = 1
	melee[ml.assassin_blade, MELEE.STYLE] = animation.swing
	
	
	
	melee[ml.the_delivery, MELEE.NAME] = "CRUDE HATCHET"
	melee[ml.the_delivery, MELEE.SPRITE] = the_delivery
	melee[ml.the_delivery, MELEE.ARMED_SPR] = the_delivery_armed
	melee[ml.the_delivery, MELEE.ARMED_SPR_BLOODY] = the_delivery_armed
	melee[ml.the_delivery, MELEE.ITEM] = obj_item_delivery
	
	melee[ml.the_delivery, MELEE.HANDED] = 2	
	melee[ml.the_delivery, MELEE.STYLE] = animation.swing
	
	melee[ml.the_delivery, MELEE.STRIKE_SFX] = snd_axe
	melee[ml.the_delivery, MELEE.HIT_SFX] = snd_axe_hit
}
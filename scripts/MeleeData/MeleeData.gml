function MeleeData(){
MeleeFrontEnd()
#region enum
	enum MELEE {
	NAME,
	SPRITE,
	ARMED_SPR,
	ARMED_SPR_BLOODY,
	ITEM,
	
	STRIKE_SFX,
	HIT_SFX,
	
	HANDED,
	STYLE,
	
	INTERVAL,
	DAMAGE,
	RANGE
	}
	
	enum ml {
	fist,
	knife,
	crude_axe,
	crude_spear,
	the_delivery,
	
	assassin_blade
	}
	
	enum animation {
	stab,
	swing,
	pummel
	}
#endregion
	
	melee[ml.fist, MELEE.INTERVAL] = 10			
	melee[ml.fist, MELEE.DAMAGE] = 25
	melee[ml.fist, MELEE.RANGE] = 65
	
	
	melee[ml.knife, MELEE.INTERVAL] = 20		
	melee[ml.knife, MELEE.DAMAGE] = 35
	melee[ml.knife, MELEE.RANGE] = 75
	
	
	melee[ml.crude_axe, MELEE.INTERVAL] = 40
	melee[ml.crude_axe, MELEE.DAMAGE] = 55
	melee[ml.crude_axe, MELEE.RANGE] = 105
	
	
	melee[ml.crude_spear, MELEE.INTERVAL] = 30
	melee[ml.crude_spear, MELEE.DAMAGE] = 45
	melee[ml.crude_spear, MELEE.RANGE] = 150
	
	
	melee[ml.assassin_blade, MELEE.INTERVAL] = 50
	melee[ml.assassin_blade, MELEE.DAMAGE] = 100
	melee[ml.assassin_blade, MELEE.RANGE] = 90
	
	
	melee[ml.the_delivery, MELEE.INTERVAL] = 70
	melee[ml.the_delivery, MELEE.DAMAGE] = 150
	melee[ml.the_delivery, MELEE.RANGE] = 115
}
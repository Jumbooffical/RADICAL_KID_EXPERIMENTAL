function GrenadeData(){
enum thr {
m62,
smoke
}
	
enum NADE {
NAME,
DESCRIPTION,
SPRITE,
UNPIN,
ITEM,
SPRITE_SCALED,

SFX_BOUNCE,
TIMER,
BOUNCE_COUNT
}
	
	nade[thr.m62, NADE.NAME] = "M-62"
	nade[thr.m62, NADE.DESCRIPTION] = "FRAG GRENADE"	
	nade[thr.m62, NADE.SPRITE] = m62
	nade[thr.m62, NADE.UNPIN] = obj_m62_unpin;
	nade[thr.m62, NADE.ITEM] = obj_item_m62
	nade[thr.m62, NADE.SPRITE_SCALED] = m62_actual_size
	nade[thr.m62, NADE.SFX_BOUNCE] = snd_nade_bounce
	
	nade[thr.m62, NADE.TIMER] = 300
	nade[thr.m62, NADE.BOUNCE_COUNT] = irandom_range(3, 5)
	
	
	nade[thr.smoke, NADE.NAME] = "Smoker"	
	nade[thr.smoke, NADE.DESCRIPTION] = "SMOKE GRENADE"	
	nade[thr.smoke, NADE.SPRITE] = smoke_nade		
	nade[thr.smoke, NADE.UNPIN] = obj_smokenade_unpin;	
	nade[thr.smoke, NADE.ITEM] = obj_item_smokenade
	nade[thr.smoke, NADE.SPRITE_SCALED] = smokenade_actual_size
	nade[thr.smoke, NADE.SFX_BOUNCE] = snd_nade_bounce
	
	nade[thr.smoke, NADE.TIMER] = 120
	nade[thr.smoke, NADE.BOUNCE_COUNT] = irandom_range(2, 3)
}
function GrenadeData(){
enum thr {
m62,
smoke_nade
}
	
enum NADE {
NAME,
DESCRIPTION,
ARMED_SPRITE,
SPRITE,
UNPIN,
ITEM,
SPRITE_SCALED,

SFX_BOUNCE,
TIMER,
BOUNCE_COUNT
}
	
	nade[thr.m62, NADE.NAME] = "M-62"
	nade[thr.m62, NADE.DESCRIPTION] = "FRAG GRENADE, long fuse time, not meant to kill but to force enemies to stop attacking and reposition"
	nade[thr.m62, NADE.ARMED_SPRITE] = m62_enemy_armed
	nade[thr.m62, NADE.SPRITE] = m62
	nade[thr.m62, NADE.UNPIN] = obj_m62_unpin;
	nade[thr.m62, NADE.ITEM] = obj_item_m62
	nade[thr.m62, NADE.SPRITE_SCALED] = m62_actual_size
	nade[thr.m62, NADE.SFX_BOUNCE] = snd_nade_bounce
	
	nade[thr.m62, NADE.TIMER] = 300
	nade[thr.m62, NADE.BOUNCE_COUNT] = irandom_range(3, 5)
	
	
	nade[thr.smoke_nade, NADE.NAME] = "Smoker"	
	nade[thr.smoke_nade, NADE.DESCRIPTION] = "They can't fight anyone they can't see... most of the time"
	nade[thr.smoke_nade, NADE.ARMED_SPRITE] = m62_enemy_armed
	nade[thr.smoke_nade, NADE.SPRITE] = smoke_nade		
	nade[thr.smoke_nade, NADE.UNPIN] = obj_smokenade_unpin;	
	nade[thr.smoke_nade, NADE.ITEM] = obj_item_smokenade
	nade[thr.smoke_nade, NADE.SPRITE_SCALED] = smokenade_actual_size
	nade[thr.smoke_nade, NADE.SFX_BOUNCE] = snd_nade_bounce
	
	nade[thr.smoke_nade, NADE.TIMER] = 200
	nade[thr.smoke_nade, NADE.BOUNCE_COUNT] = irandom_range(2, 3)
}
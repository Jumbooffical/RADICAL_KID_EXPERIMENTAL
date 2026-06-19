// Inherit the parent event
if death {
	obj_player.debuff_wallhacked = false
}

event_inherited();

if spotted && !death {
	obj_player.debuff_wallhacked = true
	global.wallhack_alpha = lerp(global.wallhack_alpha, 1, 0.02)
}
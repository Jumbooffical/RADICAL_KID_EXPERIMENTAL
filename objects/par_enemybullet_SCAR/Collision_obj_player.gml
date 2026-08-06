if (!other.is_rolling) {
	
var dmg_falloff = 1
if apply_falloff {
	var mouse_dist = point_distance(start_x, start_x, x, y)	
	for (var i = 0; i < round(mouse_dist/150); i++) {
	dmg_falloff = (1 - (i * 0.15))
	dmg_falloff = clamp(dmg_falloff, 0.25, 1)
	}
}	
	
var dmg = (damage * other.player_stat.damage_taken) * global.damage_mult[gun_type] * dmg_falloff
other.hp -= dmg
with instance_create_depth(x, y, depth, obj_damage_text) {
	text = round(dmg)
}

instance_destroy()
}
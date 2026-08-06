function enemy_dying() {
	if name == obj_enemy_titan {
	image_speed = 0.3
	}
	
	with instance_create_layer(x, y, "Enemies", obj_entity_dying) {
	sprite_index = other.death_spr
	image_xscale = other.image_xscale
	image_speed = other.image_speed
	
		if other.martyr_airstrike {
		instance_create_depth(obj_player.x, obj_player.y, depth, obj_airstrike_zone)
		}
		
	maxhp = other.maxhp
	minion = other.sniper_minion
	}
	
	path_end()
	instance_destroy()
}
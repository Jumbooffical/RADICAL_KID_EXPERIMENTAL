show_tooltip = false

visible = true
if boss_room {
	raise_tier = true
	visible = false
	if !instance_exists(par_enemy) {
		instance_create_depth(x, y + 50, depth, obj_boss_crate)
		boss_room = false
	}
}

if place_meeting(x, y, obj_player) && !boss_room {
	show_tooltip = true
	
	if keyboard_check_pressed(ord("E")) {
		next_room()
		obj_player.save_alarm = 30
		
		if obj_player.easymode {
			obj_player.hp = obj_player.maxhp
		}
	}
}

if keyboard_check_pressed(ord("M")) {
	next_room()
	obj_player.save_alarm = 30	
}
show_tooltip = false

visible = true

if place_meeting(x, y, obj_player) {
	show_tooltip = true
	
	if keyboard_check_pressed(ord("E")) {
		obj_player.x = to_x
		obj_player.y = to_y
		
		if restart {
			game_restart()
		}
	}
}
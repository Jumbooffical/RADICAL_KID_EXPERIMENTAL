show_tooltip = false
if place_meeting(x, y, obj_player) {
	show_tooltip = true
	
	if keyboard_check(ord("E")) {
		next_room()
		savegame()
	}
}
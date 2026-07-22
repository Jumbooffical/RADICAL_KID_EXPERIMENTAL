show_tooltip = false

visible = true

if place_meeting(x, y, obj_player) {
	show_tooltip = true
	
	if keyboard_check_pressed(ord("E")) {
		room_goto(Tutorial)
	}
}
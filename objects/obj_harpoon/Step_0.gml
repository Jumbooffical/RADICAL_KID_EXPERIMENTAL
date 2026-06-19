// Inherit the parent event
event_inherited();

if place_meeting(x, y, par_indestructable) {
	if screenshake {
	obj_camera.shake_str += 25
	screenshake = false
	}
}
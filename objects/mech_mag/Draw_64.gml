draw_self()
if obj_player.select_mag {
	sprite_index = mag
}

image_xscale = 1
image_yscale = 1
image_angle = 0

if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) {
	if sprite_index == spr_empty_mag_slot {
		desc = ""
		desc2 = ""
	}
	mag_description()
}
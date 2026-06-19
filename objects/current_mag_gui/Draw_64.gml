draw_self()
image_xscale = 1
image_yscale = 1
image_angle = 0
draw_text(x - 30, y - 60, "Current Magazine:")
if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) && visible {
	if sprite_index == spr_empty_mag_slot {
		desc = ""
		desc2 = ""
	}
	mag_description()
}
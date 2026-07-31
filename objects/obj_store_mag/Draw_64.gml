draw_self()
image_angle = 0
image_xscale = 1
image_yscale = 1

if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) {
	if sprite_index == spr_empty_mag_slot {
		desc = "Drag a magazine by holding right click into this slot"
		desc2 = "It will be retained for later use"
	}
	mag_description()
}

if (obj_player.is_dragging) {
    draw_sprite(
        obj_player.rmb_hold_mag,
        0,
        device_mouse_x_to_gui(0),
        device_mouse_y_to_gui(0)
    );
}


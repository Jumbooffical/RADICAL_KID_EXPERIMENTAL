if live_call() return live_result
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
	if obj_player.rmb_hold_mag == spr_belt_printermag {
		if (instance_number(obj_pocket_mag) > 1) {
			var first = instance_find(obj_pocket_mag, 0);
			if (id != first) {
				var white_amt = 0.5;
				shader_set(shd_muzzle);
				shader_set_uniform_f(shader_get_uniform(shd_muzzle, "u_white"), white_amt);
			}
		}
	}
}

draw_self()
shader_reset()

if (obj_player.is_dragging) {
    draw_sprite(
        obj_player.rmb_hold_mag,
        0,
        device_mouse_x_to_gui(0),
        device_mouse_y_to_gui(0)
    );
}
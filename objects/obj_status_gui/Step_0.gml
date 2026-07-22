mouse_hovered = false
if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) {
	mouse_hovered = true
}

afterimg_alarm--
if afterimg_alarm == 0 {
	var inst = instance_create_depth(x, y, depth, gui_afterimage);
	inst.sprite_index = sprite_index;
	inst.status_icon = true
}
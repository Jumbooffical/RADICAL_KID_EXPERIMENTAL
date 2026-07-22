if !obj_player.player_armed exit;
draw_self()
image_angle = 0
var scale = 0.8
image_xscale = scale
image_yscale = scale
if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) && visible {
	if sprite_index == spr_empty_mag_slot {
		desc = ""
		desc2 = ""
	}
	mag_description()
}
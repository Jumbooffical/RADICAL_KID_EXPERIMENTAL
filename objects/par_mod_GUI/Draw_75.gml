attachment_description()

if !obj_player.is_aiming && sprite_index != 0 {
draw_self()

if scale > 1 {
	scale -= 0.15
}

if is_dragging {
	draw_sprite(sprite_index, 1, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0))
}}

disable = false
image_blend = c_white
var text_scale = 0.55
switch (index) {
	case 1:
		if !obj_player.allow_optic {
			disable = true
		}
	break;
	
	case 2:
		if !obj_player.allow_grip {
			disable = true
		}
	break;
	
	case 3:
		if !obj_player.allow_mount {
			disable = true
		}
	break;
	
	case 4:
		if !obj_player.allow_barrel {
			disable = true
		}
	break;
}

if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {
draw_set_alpha(random_range(0.8, 1))
draw_set_colour(c_green);
if disable draw_set_colour(c_red);
draw_rectangle(x, y + 50, x + 360, 330, false);
draw_set_alpha(1)

draw_set_colour(c_white);
draw_text(x + 20, y + 58, name + "     " + disable_name);
draw_text_ext_transformed(x + 20, y + 95, description + "\n\n" + disable_text,
-1, 330, 1, 1, 0)

	if disable {
		draw_set_colour(c_red)
		draw_text_transformed(x - 25, y + 30, "INCOMPATIBLE", text_scale, text_scale, 1)
		draw_set_colour(c_white);
		disable_name = "[[NOT COMPATIBLE]]"
		disable_text = "This gun is not compatible with this mod, it will not be active!"
	} else {
		disable_text = ""
		disable_name = ""
	}
	

if obj_player.open_inventory {
	draw_sprite(RMB, 0, mx + 30, my)
	draw_text(mx + 45, my, ":Detach Mod")
}	
}

if disable {
	image_blend = c_red	
}
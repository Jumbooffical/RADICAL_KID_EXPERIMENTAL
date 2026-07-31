if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) {
	if mouse_check_button_pressed(mb_left) && visible {
		load_new_mag()
		selected_pocket = true
	}
	
	if mouse_check_button_released(mb_right) 
	&& (obj_player.is_dragging) {
		with (obj_player) {
		other.sprite_index = rmb_hold_mag
		rmb_hold_mag = 0
		is_dragging = false
		}	
	}
}
	
visible = true
if !obj_player.is_reloading {
	if sprite_index == spr_rngmag && selected_pocket {
		with instance_create_depth(x, y, -11, gui_afterimage) {
			sprite_index = other.rng_mag
		}
	}
	
	if selected_pocket {
		sprite_index = spr_empty_mag_slot
		selected_pocket = false
	}
	
	visible = false
}

if obj_player.gun_type == WeaponType.Shotgun {
	visible = false
}

obj_player.have_belt_printer = false
if sprite_index == spr_belt_printermag {
	obj_player.have_belt_printer = true
}

if rng_mag == spr_rngmag {
	rng_mag = spr_mag
}
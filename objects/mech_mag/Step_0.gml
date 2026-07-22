if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) {
	with (obj_player) {
		var knockback = 5
		var mouse_dir = point_direction(x, y, mouse_x, mouse_y) - 180;
		smooth_recoil_x -= lengthdir_x(knockback, mouse_dir)
		smooth_recoil_y -= lengthdir_y(knockback, mouse_dir)
	}
	
	if mouse_check_button_pressed(mb_left) {
		load_new_mag()
		obj_store_mag.selected_pocket = false
	}
}

if (mouse_check_button_pressed(mb_right)) 
&& (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) 
&& (!obj_player.is_dragging)
&& sprite_index != spr_empty_mag_slot {
    with (obj_player) {
        rmb_hold_mag = other.sprite_index;
        is_dragging  = true;
    }
}

var nearest = instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_store_mag)
if (mouse_check_button_released(mb_right)
&& instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_store_mag)
&& sprite_index == obj_player.rmb_hold_mag) {

    if (sprite_index == spr_empty_mag_slot) {
        mag = spr_empty_mag_slot;
        rarity = noone;
    } else {
        mag = nearest.sprite_index;

        var mag_data = get_rarity_from_swapping(mag);
        if (mag_data != undefined) {
            rarity = mag_data.rarity;
        }
    }
}

if !obj_player.is_reloading {
	if obj_player.quickslot[obj_player.selected_item, QSlot.Mag] == sprite_index {
		with instance_create_depth(x, y, -11, gui_afterimage) {
			sprite_index = other.sprite_index
		}
	}
	
	if sprite_index == spr_rngmag {
		with instance_create_depth(x, y, -11, gui_afterimage) {
			sprite_index = other.rng_mag
		}
	}
	instance_destroy()
}
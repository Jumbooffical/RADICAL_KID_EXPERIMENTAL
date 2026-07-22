with (obj_player) {
other.sprite_index = quickslot[selected_item, QSlot.Mount]
}

if sprite_index == spr_shuriken_printer {
	draw_text_transformed(x, y + 15, obj_player.shuriken, scale, scale, 0)
}

if sprite_index == spr_nade_launcher {
	draw_text_transformed(x, y + 15, display_duration(obj_player.nade_launcher_cd), scale, scale, 0)
	if obj_player.nade_launcher_cd > 0 {
		image_blend = c_maroon
	}
}

event_inherited()
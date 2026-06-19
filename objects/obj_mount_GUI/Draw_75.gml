with (obj_player) {
other.sprite_index = quickslot[selected_item, QSlot.Mount]
}

if sprite_index == spr_shuriken_printer {
	draw_text_transformed(x, y + 15, obj_player.shuriken, scale, scale, 0)
}

event_inherited()
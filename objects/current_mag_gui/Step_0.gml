sprite_index = obj_player.quickslot[obj_player.selected_item, QSlot.Mag]
visible = false

if obj_player.is_reloading || obj_player.open_inventory {
	visible = true
}
depth = -22
//x = obj_player.x - 222
//y = obj_player.y

desc = ""
desc2 = ""
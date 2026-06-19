x = obj_player.x
y = obj_player.y
visible = obj_player.have_flashlight
image_angle = point_direction(x, y, mouse_x, mouse_y)

if obj_player.is_aiming {
image_angle = point_direction(x, y, obj_reticle.x, obj_reticle.y)
}

if obj_player.is_rolling || !obj_player.player_armed {
visible = false
}

event_inherited()

if instance_number(obj_player_flashlight) > 1 {
	instance_destroy()
}
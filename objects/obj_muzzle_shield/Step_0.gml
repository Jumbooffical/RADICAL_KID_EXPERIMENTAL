image_alpha -= 0.25

if image_alpha < 0.01 {
	instance_destroy()
}

x = obj_player.x
y = obj_player.y
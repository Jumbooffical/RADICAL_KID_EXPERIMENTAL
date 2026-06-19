sprite_index = spr_player_rolling
image_index = obj_player.image_index
image_speed = 0
image_alpha -= 0.04

if (image_alpha <= 0) {
	instance_destroy()
	}
x = nearest.x
y = nearest.y

uls_set_light_range(self, obj_ranged_enemy.base_aggro / (1.5 + brightness))
if nearest.death {
instance_destroy()
}

uls_set_light_alpha(self, brightness)
if nearest.my_state = STATE.ATTACK {
	if nearest.image_xscale == 1
	&& obj_player.image_xscale == -1
	|| nearest.image_xscale == -1
	&& obj_player.image_xscale == 1 {
		brightness = lerp(brightness, max_brightness, 0.05)
	}
} else {
brightness = lerp(brightness, min_brightness, 0.07)
}
event_inherited()
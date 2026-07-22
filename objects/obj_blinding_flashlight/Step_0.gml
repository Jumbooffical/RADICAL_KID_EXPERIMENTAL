if !instance_exists(nearest) {instance_destroy() exit;}
if nearest.death {
instance_destroy()
}

uls_set_light_range(self, obj_ranged_enemy.base_aggro / (2.5 + brightness))
x = nearest.x
y = nearest.y

uls_set_light_alpha(self, brightness)
if nearest.my_state = STATE.ATTACK {
	if nearest.image_xscale == 1
	&& obj_player.image_xscale == -1
	|| nearest.image_xscale == -1
	&& obj_player.image_xscale == 1 {
		brightness = lerp(brightness, max_brightness, 0.02)
	}
} else {
brightness = lerp(brightness, min_brightness, 0.07)
}
event_inherited()
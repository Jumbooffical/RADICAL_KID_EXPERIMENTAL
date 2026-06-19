function lost_balance() {
	sprite_index = spr_player_rolling
	for (var i = 0; i < extra_quickslot_amount + 1; i++) {
	drop_weapon(noone, i)
	}

	if global.earthquake >= 0 {
		image_speed = 0.4
		if (image_index >= image_number - 1) {
			is_falling = false
		}
	} else {
		image_index = 10
		image_speed = 0	
	}
}
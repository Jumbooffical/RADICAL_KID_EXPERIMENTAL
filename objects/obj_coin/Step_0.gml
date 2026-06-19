timer--;

if (timer >= 0) {
	gravity += 0.1 * mult;
	image_index = 0
	x += random_dir * mult;
} else {
	gravity = 0;
	vspeed = 0;
	image_angle = 0
	image_index = 1
}

if collected {
var in = 0.05
image_xscale += in * 2
image_yscale += in * 2
image_alpha -= in * 1.25
obj_player.cash_textscale = 3
}

if image_alpha < 0 {
obj_player.cash += cash
instance_destroy()
}

if place_meeting(x, y, obj_player) {
collected = true
	if play_sound {
	audio_play_sound(snd_coin_collect, 1, 0, random_range(0.8, 1.1), 0, random_range(0.8, 1.1))
	play_sound = false
	}
}

gun_bob_time += gun_bob_speed / 6;
var target = sin(gun_bob_time) * gun_bob_amount;
smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15) / 6;

y = y + smooth_arm_inertia
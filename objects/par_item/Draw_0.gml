image_index = 0
alpha = 1

if global.earthquake < 0 {
depth = -80
	if rng_side == 0 {
	image_angle--
	} else {
	image_angle++
	}
} else {
depth = 80
rng_side = choose(0, 1)
}

draw_shadow(sprite_index, 15, 0, smooth_arm_inertia/2, 5, 
image_xscale, image_yscale, image_angle, 1 - -global.earthquake/111)
if in_shop {
	draw_text_transformed(x - 50, y + 50, "Price: " + string(price), 1.2, 1.2, 0)
}

if show_pickup {
	var white_amt = 1;
	shader_set(shd_muzzle);
	shader_set_uniform_f(shader_get_uniform(shd_muzzle, "u_white"), white_amt);
	alpha = random_range(0.5, 0.8)
}

draw_sprite_ext(sprite_index, 0, x, y + (global.earthquake * rng), image_xscale, 1, image_angle, 
c_white, alpha)
shader_reset()

gun_bob_time += gun_bob_speed / 6;
var target = sin(gun_bob_time) * gun_bob_amount;
smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15) / 6;

y = y + smooth_arm_inertia
if live_call() return live_result
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

draw_shadow(sprite_index, 15, 0, 0, 5, 
image_xscale, image_yscale, image_angle, 1 - -global.earthquake/111)
if in_shop {
	draw_text_transformed(x - 50, y + 50, "Price: " + string(price), 1.2, 1.2, 0)
}
		    
var context_x = obj_player.x + 100	
var w = 120;
var h = 60;
var spacing = 90
if show_pickup {
	if in_shop {
		attachment_description()
		consumable_description()
	
		draw_set_alpha(random_range(0.8, 1))
	    draw_set_colour(c_grey);
	    draw_rectangle(context_x, y + 5, context_x + w * 4, y + h * 4, false);

	    draw_set_colour(c_black);
	    draw_rectangle(context_x, y, context_x + w * 4, y + 45, false);
		draw_set_alpha(1)
		
		var txt_scale = 1.5

	    draw_set_colour(c_white);
	    draw_text_transformed(context_x + 20, y + 8, name, txt_scale, txt_scale, 0);
		draw_text_ext_transformed(context_x + 20, y + 55, description,
		-1, w * 3 - 50, txt_scale, txt_scale, 0)
	}
	
	draw_text_transformed(context_x - 20, y - 20, "[F]: Pickup", 1.2, 1.2, 0);
	var white_amt = 1;
	shader_set(shd_muzzle);
	shader_set_uniform_f(shader_get_uniform(shd_muzzle, "u_white"), white_amt);
	alpha = random_range(0.5, 0.8)
}

draw_sprite_ext(sprite_index, 0, x, y + global.earthquake, image_xscale, 1, image_angle, 
c_white, alpha)
shader_reset()

smooth_arm_inertia = apply_bobbing(0.1, 0.05)

y = y + smooth_arm_inertia
event_inherited()
sprite_index = BULLET_incendiary

if is_shrapnel {
    visible = true;

    velocity = lerp(velocity, 0, 0.2);
    image_xscale = lerp(image_xscale, 0, 0.07);

    if (image_xscale < 0.01) {
        instance_destroy();
    }
} else {
	if place_meeting(x, y, par_indestructable) {
		instance_create_depth(x, y, depth, obj_firework)
		instance_destroy()
	}
	
	if obj_player.is_aiming {
		if distance_to_object(obj_player) > dist_to_reticle {
			instance_create_depth(x, y, depth, obj_firework)
			instance_destroy()
		}
	}
}
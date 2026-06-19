timer--

if velocity > 0 {
velocity = lerp(velocity, 0, 0.025)
}
clamp(velocity, 0, 30)

zspd += grav
launch += zspd;

if launch > 0 {
	if bounce > 0 {
		audio_play_sound(nade[index, NADE.SFX_BOUNCE], 1, 0, velocity * 0.15, 0, irandom_range(1, 1.5))
		zspd = -zspd / 1.25;
		bounce--;

		base_velocity *= 0.5;
		velocity = base_velocity/1.25;
		
		if bounce == 1 {
		last_bounce = true
		}
	} else {
		if last_bounce {
		global.explode = true
		with instance_create_depth(x, y, depth, obj_explosion) {
		friendly_fire = false
		}
		instance_destroy()
		}
		launch = 0
	}
} else {
image_angle += rolling_spd
}

x += lengthdir_x(velocity, direction);
y += lengthdir_y(velocity, direction);

if timer == 0 {
collided = true
}

if timer <= 0 {
	if (place_meeting(x + lengthdir_x(velocity, direction),
                  y + lengthdir_y(velocity, direction),
                  par_indestructable))
	{
	    // Horizontal collision
	    if (place_meeting(x + lengthdir_x(velocity, direction), y, par_indestructable)) {
	        direction = 180 - direction;
	    }

	    // Vertical collision
	    if (place_meeting(x, y + lengthdir_y(velocity, direction), par_indestructable)) {
	        direction = -direction;
	    }
		
		if collided {
		audio_play_sound(nade[index, NADE.SFX_BOUNCE], 1, 0, velocity * 0.15, 0, irandom_range(2, 2.3))
		collided = false
		}
	}
}


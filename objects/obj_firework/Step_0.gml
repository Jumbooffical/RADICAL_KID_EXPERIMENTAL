var dist = distance_to_object(obj_player);
var pt = obj_controller

if explode {
if global.enable_mflash {
	with instance_create_depth(x, y, depth, light_explosion_flash) {
		radius = 30
	}
}
audio_play_sound(snd_firework3, 1, 0, 1.2, 0, random_range(1.5, 1.7))
	
var shrp_count = irandom_range(20, 30)
for (var i = 0; i < shrp_count; i++) {
        with instance_create_depth(x, y, depth, obj_incendiary_bullet) { 
            direction = irandom_range(0, 360)
            image_angle = direction;
			image_xscale = 2
			damage = damage / 2

			is_shrapnel = true
        }
	}
	explode = false
}

smoke_delay--
if smoke_delay == 1 {
part_particles_create(global.sys_explosion_smoke, x, y, global.pt_explosion_smoke, 1)
instance_destroy()
}
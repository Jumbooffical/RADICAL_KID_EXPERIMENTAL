var max_dist = global.radius * 3;
var dist = distance_to_object(obj_player);
var pt = obj_controller
global.explo_gain = 1

if dist > max_dist {
global.explo_gain = global.explo_gain/2
}

if global.ringing > 0 {
global.ringing -= 0.003
}

if global.ringing > 1 {
global.ringing = 1
}

if explode {
obj_camera.shake_str += 22

part_particles_create(global.sys_explosion, x, y, global.pt_explosion, random_range(3,5))

if global.enable_mflash {
instance_create_depth(x, y, depth, light_explosion_flash)
}

audio_play_sound(snd_m62_BOOM, 0, 0, global.explo_gain, 0, random_range(0.8, 1.2))

if global.enable_tinnitus {
global.ringing += clamp(1 - (dist / max_dist), 0, 2) * 2;
audio_play_sound(snd_tinnitus, 0, 0, global.ringing, 0, 1)
}
	
var shrp_count = 100
for (var i = 0; i < shrp_count; i++) {
        with instance_create_depth(x, y, depth, par_shrapnel) { 
            direction = irandom_range(0, 360)
            image_angle = direction;     
			image_index = random_range(0, 1)
			
			if !other.friendly_fire {
				friendly_fire = false
			}
        }
	}
	explode = false
}

smoke_delay--
if smoke_delay == 1 {
part_particles_create(global.sys_explosion_smoke, x, y, global.pt_explosion_smoke, 12)
instance_destroy()
}
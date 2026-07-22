image_speed = 1
enemy_spd = base_spd
if death {
instance_destroy(obj_nail)
instance_destroy(obj_harpoon)	
instance_destroy(obj_magnet_missile)	
}

if death {
	if snd_death {
		audio_play_sound(random_array(global.boss_vanquished_snd), 1, 0, 1)
		snd_death = false
	}
}

enemy_inherited()

#region AI Movement Logic
var mi = obj_player

if collision_circle(x, y, base_aggro, mi, false, true) {	
	spotted = true
}
#endregion
if spotted {
	state_interval--
}

var acc = 7
var spread = irandom_range(-acc, acc)
var aim = point_direction(x, y, mi.x, mi.y)
var firerate = 0
cooldown--

#region HMB_STATE Machine
	switch (my_state) {
		case HMB_STATE.IDLE:
			if spotted {
			my_state = HMB_STATE.ATTACK1
			}
		
			state_name = "IDLE"
			state_interval = 300
			enemy_idle()
		break;
		
		
		
	    case HMB_STATE.ATTACK1:
			cooldown2--
			if state_interval == 0 {
			cooldown = 120
			my_state = HMB_STATE.ATTACK2
			state_interval = 200
			} else {
				if !left {
				initial_deg += 2.5	
				} else {
				initial_deg -= 2.5		
				}
			}
		
			state_name = "ATTACK 1"
			ewID = wp.uzi
			
			firerate = 0.3
			acc = 120
			
			if cooldown < 0 {
				with instance_create_depth(x, y, depth, obj_nail) {
					image_angle = other.initial_deg + spread
					velocity = 35
				}
				cooldown = firerate
			}
			
			if cooldown2 < 0 {
				with instance_create_depth(x, y, depth, obj_nail) {
					image_angle = aim + spread
					velocity = 35
				}
				cooldown2 = 7
			}
	    break;
		
		
		case HMB_STATE.ATTACK2:
			lazer = true
			if state_interval < 1 {
			cooldown = 80
			my_state = HMB_STATE.ATTACK3
			state_interval = 250
			}
		
		
			state_name = "ATTACK 2"
			ewID = wp.m870
			
			firerate = 120
			acc = 7
			
			if cooldown < 0 {
				var shotgun = random_range(-10, 10)
				with instance_create_depth(x, y, depth, obj_harpoon) {
					image_angle = aim + spread + shotgun
					velocity = 80
				}
				cooldown = firerate
			}
	    break;
		
		
		
		case HMB_STATE.ATTACK3:
			if state_interval < 1 {
			my_state = HMB_STATE.ULT
			state_interval = 150
			}
		
			state_name = "ATTACK 3"
			ewID = wp.svd
			
			firerate = 999
			if cooldown < 0 {
				with instance_create_depth(x, y, depth, obj_magnet_missile) {
					image_angle = aim
					velocity = 0
				}
				cooldown = firerate
				lazer = false
			}
			
			if state_interval == 45 {	
				if instance_exists(obj_nail) {
				obj_nail.glow = 1		
				}
				if instance_exists(obj_harpoon) {
				obj_harpoon.glow = 1			
				}
			}
	    break;
		
		
		case HMB_STATE.ULT:
			if state_interval < 1 {
			instance_destroy(obj_nail)
			instance_destroy(obj_harpoon)		
			
			cooldown = 0
			my_state = HMB_STATE.ATTACK1
			state_interval = 300
			left = choose(true, false)
			initial_deg = aim
			} else {
			
			if state_interval == 60 {
			obj_magnetize_field.scale++
			}

			state_name = "ULTIMATE"	
			if instance_exists(obj_nail) {
			obj_nail.velocity = lerp(obj_nail.velocity, 35, 0.15)				
			}
			if instance_exists(obj_harpoon) {
			obj_harpoon.velocity = lerp(obj_harpoon.velocity, 50, 0.2)			
			}}
	    break;
	}
#endregion

event_inherited()
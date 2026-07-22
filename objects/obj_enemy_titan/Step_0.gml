if outside_cam && !spotted exit;
if my_state == STATE.FREEFALL exit;
enemy_inherited()
var mi = obj_player
gun_type = weapon[ewID, GUN.TYPE]

base_spd = 1.5
knockback_immune = true

img_spd = 0.3
recovery_rate = 0.7
alarm_interval = 120
stamina = clamp(stamina, -100, 100)

if speed_buff {
	base_spd = 6.5
	img_spd = 2
	recovery_rate = 1.7
	alarm_interval = 30
	
	afterimage(x, y, 3)
}

image_speed = img_spd
enemy_spd = base_spd
#region AI
if my_state != STATE.BLINDED
&& my_state != STATE.TELEPORT {
if collision_circle(x, y, aggro_range, mi, false, true) {	
	if (collision_line(x, y, mi.x, mi.y, par_indestructable, true, true)) {
		//blocked line of sight
		if spotted && my_state != STATE.PATROL {
			my_state = STATE.ALERT
			last_seen_player = true
		}
	} else {
		spotted = true
		if obj_player.blind_str > 0 {
			my_state = STATE.HOLD
		} else {
			my_state = STATE.ATTACK
		}
	}
	} else {
		if spotted && my_state != STATE.PATROL {
			my_state = STATE.ALERT
		}
	}
}

if start_teleport
&& my_state != STATE.ATTACK {
	my_state = STATE.TELEPORT
}
#endregion

if !outside_cam {
if sprite_index == run_spr 
|| sprite_index == walk_spr && !exhausted {
stamina -= drain_rate
	if floor(image_index) == 3 || floor(image_index) == 14 {
		if distance_to_object(obj_player) < aggro_range * 3 {
			obj_camera.shake_str = 5
		
			if step {
			audio_play_sound(snd_titan_kneel, 1, 0, 0.5, 0, 0.7)
			step = false
			}
		}
	} else {
		step = true
	}
}
}

if stamina < 0 {
exhausted = true
}

if exhausted {
my_state = STATE.EXERTED
}

#endregion
current_mag = infinity

event_inherited()
#region State Machine
	switch (my_state) {
	    case STATE.IDLE:
			state_name = "idle"
			enemy_idle()
	    break;
		
		case STATE.ALERT:
			sprite_index = run_spr
			state_name = "alerted"
			enemy_chase()
	    break;
		
		case STATE.ATTACK:
			state_name = "attack"
			enemy_shooting()
	    break;
		
		case STATE.HOLD:
			state_name = "hooooooold"
			enemy_hold()
	    break;
		
		case STATE.RETREAT:
			state_name = "retreat"
			enemy_retreat()
	    break;
		
		case STATE.BLINDED:
			state_name = "blinded"
			enemy_blinded()
	    break;
		
		case STATE.EXERTED:
			state_name = "exerted"
			enemy_exerted()
	    break;
		
		case STATE.TELEPORT:
			state_name = "teleporting"
			enemy_teleport()
	    break;
		
		case STATE.FREEFALL:
			state_name = "freefalling"
			enemy_freefall()
	    break;
	}

function enemy_inherited() {	
	var mi = obj_player
	enemy_spd = clamp(enemy_spd, 1, 10)
	cooldown = clamp(cooldown, 0, 999)
	
#region Special
	if mi.debuff_wallhacked
	&& my_state != STATE.TELEPORT {
	aggro_range = infinity
	spotted = true
	base_reaction_time = 1
	blind_immune = true
	}
	
	if start_teleport
	&& my_state != STATE.ATTACK {
		my_state = STATE.TELEPORT
	}
	
	if instance_exists(obj_titan_magnetfield) {
		if magnet_imbued {
			obj_titan_magnetfield.scale = 5
		} else {
			obj_titan_magnetfield.scale = 0
		}
	}
	
	//Apply flashlight
	if flashlight {
	instance_create_depth(x, y, depth, obj_flashlight)
	flashlight = false
	}

	if blinding_flashlight {
	var intensity = 2
	for (var i = 0; i < intensity; i++) {
		instance_create_depth(x, y, depth, obj_blinding_flashlight)
	}
	blinding_flashlight = false
	}
	
	if heli_mounted {
		var nearest = instance_nearest(x, y, obj_helicopter)
		if instance_exists(obj_helicopter) {
			sprite_index = spr_goon_kneel
			x = nearest.x
			y = nearest.y
			//visible = false
			
			if current_mag < 0 {
			enemy_reloading()
			} else {
			my_state = STATE.ATTACK
			}
			
			if place_meeting(x, y, obj_reticle) && obj_player.is_aiming {
			image_alpha = clamp(image_alpha, 0, 0.6)
			image_alpha +=	0.01
			} else {
			image_alpha = 0
			}

			if death {
			nearest.has_sniper = false
			}
		} else {
			instance_destroy()
		}
	}
#endregion

	image_speed = 1

	if death {
	enemy_dying()
	}
	if death exit;

	if enemy_hp <= 0 {
		death = true
	}

	if gun_frame > 0 {
		gun_frame = 0
	}
	
	gun_frame = clamp(gun_frame, 0, 99)
	heat = clamp(heat, 0, 1)
	heat -= 0.003

	cooldown--
	hurt--
	obj_player.mult_react_time = 1

	if spotted {
	reaction_time = base_react_time * obj_player.mult_react_time
	}

	path_alarm--
	if path_alarm == 0 {
		path_alarm = irandom_range(alarm_interval, alarm_interval * 1.5)
	}
	
	target = obj_player
	path_target = obj_player
	
	if !blind_immune {
	if place_meeting(x, y, obj_smoke_discharge) {
	my_state = STATE.BLINDED
	spotted = true
	} else {
		if spotted {
		my_state = STATE.ALERT
		}
	}}
	
	gore -= 0.002
	gore = clamp(gore, 0, 1)
	
	if instance_exists(obj_sniper_boss) {
		aggro_range = 600
	}
}
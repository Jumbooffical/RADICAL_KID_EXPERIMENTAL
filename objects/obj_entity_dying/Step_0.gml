
if image_speed > 1 {
	image_speed = 1
}

if (image_index >= image_number - 1) {
	image_index = image_number - 1
	drop_alarm--
	
	if drop_alarm == 0 && !minion {
		var rare_chance = 3
		var uncommon_chance = 7
		
		if rng <= rare_chance {
			drop_money(obj_stack_of_cash, 1)
	
		} else if rng <= uncommon_chance {
			drop_money(obj_coin, irandom_range(15, 30))
			audio_play_sound(snd_coins_spill, 1, 0, 1)
	
		} else if rng <= 50 {
			drop_money(obj_coin, irandom_range(1, 3))
			
		} else {
			drop_money(obj_cash, 1)
		}
	}
	exit;
}

if sprite_index == spr_titan_death {
	if floor(image_index) == 17 {
		obj_camera.shake_str += 7
		
		if !kneel {
		audio_play_sound(snd_titan_kneel, 1, 0, 1, 0, 0.7)
		kneel = true
		}
	}
		
	if floor(image_index) == 31 {
		obj_camera.shake_str += 15
		
		if !collapse {
		audio_play_sound(snd_titan_collapse, 1, 0, 1, 0, 0.7)
		collapse = true
		}
	}
}

if lifesteal {
	heal_player(maxhp/3)
	
	if obj_player.hardmode {
		obj_player.cancer_timer += 60
	}
	
	lifesteal = false
}

if reduce_nade_cd {
	obj_player.nade_launcher_cd -= 5
	reduce_nade_cd = false
}

timer--
if timer <= 0 {
instance_destroy()
}

if obj_player.gun_type == WeaponType.Shotgun
&& sprite_index != spr_titan_death {
	sprite_index = spr_player_shotgun_death
	image_speed = 0.6
	
	var lerp_str = 0.05
	smooth_knockback_x = lerp(smooth_knockback_x, 0, lerp_str)
	smooth_knockback_y = lerp(smooth_knockback_y, 0, lerp_str)
	x -= smooth_knockback_x
	y -= smooth_knockback_y
}
	
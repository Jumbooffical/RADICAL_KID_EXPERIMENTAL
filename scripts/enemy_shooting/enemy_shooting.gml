function enemy_shooting() {
if !visible && !heli_mounted exit;	
if image_alpha < 1 && !heli_mounted exit;
	
var mi = obj_player
var aim = point_direction(x, y, mi.x, mi.y) // Pointing the gun at the player
var weaponLength = sprite_get_bbox_right(weapon[ewID, GUN.SPRITE]) - sprite_get_xoffset(weapon[ewID, GUN.SPRITE])
var xOffset = lengthdir_x(weaponLength, aim)
var yOffset = lengthdir_y(weaponLength, aim)
var acc = enemy_acc * 1.3

// Reaction time
if !react {
cooldown = reaction_time
react = true
}

if gun_type == WeaponType.Bolt ||
	gun_type == WeaponType.DMR {
		aggro_range = base_aggro * 2.5
	}
	
if gun_type == WeaponType.Shotgun {
recalc_path_to(mi.x, mi.y, enemy_spd)
sprite_index = run_spr
}

if heli_mounted {
acc = 0
}

// Firing
	if cooldown < 0 && current_mag > 0 {	
		current_mag--;
		cooldown = weapon[ewID, GUN.FIRE_DELAY]
		
		audio_play_sound(weapon[ewID, GUN.SFX_SHOOTING], 1, 0, 
		random_range(0.6, 0.7), 0, random_range(0.8, 1))
		
		for (var i = 0; i < weapon[ewID, GUN.BULLET_COUNT]; i++) {
			var shotgun_rng = 1
			if i > 1 {
				shotgun_rng = random_range(0.7, 1.2)
			}
			with instance_create_depth(x, y, depth - 1, bullet_type) {	
				wID = other.ewID;
				direction = aim + random_range(-acc, acc)	
				image_angle = direction
				velocity = weapon[other.ewID, GUN.VELOCITY] * shotgun_rng
				
				if other.overclocked {
				fire_trail = true
				velocity = 50
				}
				
				if other.heli_mounted {
				ignore_collision = true
				}
			}
		}
		
		if overclocked {
		cooldown = 0.1
		part_particles_create(mi.sys_fire_gui, x + xOffset, y + yOffset, mi.pt_fire_gui, irandom_range(3, 5))
		}
		
		gun_frame = (random_range(1, 4)) mod sprite_get_number( weapon[ewID, GUN.PLAYER_SPRITE] );
		
		if !overclocked {
		var knockback = weapon[ewID, GUN.RECOIL]
		var dir = point_direction(x, y, mi.x, mi.y) - 180;
		smooth_recoil_x += lengthdir_x(knockback, dir)
		smooth_recoil_y += lengthdir_y(knockback, dir)
		}
		
		part_type_direction(mi.pt_gun_smoke, aim - 50, aim + 50, 0, 0);
		part_particles_create(mi.sys_gun_smoke, x + xOffset, y + yOffset, mi.pt_gun_smoke, irandom_range(3, 5))
		flash_duration = 2
		
		if (global.enable_mflash) {
		with instance_create_depth(x + xOffset, y + yOffset, depth, obj_enemy_muzzle_flash) {
		wID = other.ewID
		image_blend = c_yellow
		recoil = 1
		}}
		
		heat += 0.01 * weapon[ewID, GUN.RECOIL]
		
		bolt_cycle = true
		
		if !heli_mounted {
		eject(weapon[ewID, GUN.PLAYER_SPRITE], aim)
		}
	}
	reaction_time = mult_react_time
	
	switch (name) {
		case obj_ranged_enemy:
			if !heli_mounted {
			if distance_to_object(mi) < aggro_range / 4
			&& gun_type == WeaponType.SMG {
				path_end(); path_finished = true;
			}
	
			if gun_type == WeaponType.AR
			|| gun_type == WeaponType.Bolt
			|| gun_type == WeaponType.DMR {
				path_end(); path_finished = true;
			}}
		break;
		
		case obj_tank_boss:
			image_speed = 0.5
			obj_camera.shake_str = 2
		
			if distance_to_object(mi) < aggro_range / 9
			&& !(collision_line(x, y, mi.x, mi.y, par_pathwall, true, true)) {
				path_end(); path_finished = true;
			} else {
				recalc_path_to(mi.x, mi.y, enemy_spd)
				sprite_index = walk_spr
			}
		break;
		
		case obj_sniper_boss:
			aggro_range = infinity
			path_end(); path_finished = true;
		break;
		
		case obj_enemy_titan:
			aggro_range = base_aggro * 2
			if distance_to_object(mi) < aggro_range / 4 {
				path_end(); path_finished = true;
			} else {
			recalc_path_to(mi.x, mi.y, enemy_spd)
			sprite_index = run_spr
			}
		
			if exhausted {
			my_state = STATE.EXERTED
			}
		break;
	}
}
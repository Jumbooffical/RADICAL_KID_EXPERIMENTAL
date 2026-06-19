function shooting() {
var no_click = !position_meeting(mouse_x, mouse_y, mech_mag) // Prevent action when clicking on the UI
if (full_auto) {
mouse_input = mouse_check_button(mb_left)
}
if mouse_input && no_click & (!is_reloading) {
is_shooting = true
	
    var gun = par_gun;
    var _wID = quickslot[selected_item, QSlot.Gun];
	
	#region FAIL SAFEGUARD
    if (hp <= 0) exit;
    if (is_reloading) exit;

    if (selected_item < 0) exit;
    if (quickslot[selected_item, QSlot.Gun] < 0) exit;

    if (_wID >= array_length(weapon)) exit;
	#endregion

    var aim = point_direction(x, y, mouse_x, mouse_y);
	var weaponLength = sprite_get_bbox_right(weapon[_wID, GUN.PLAYER_SPRITE]) - sprite_get_xoffset(weapon[_wID, GUN.PLAYER_SPRITE])

	var xOffset = lengthdir_x(weaponLength, aim) + player_offset;
    var yOffset = lengthdir_y(weaponLength, aim) - aiming_offsety;
	
	var smg_offset = 3
	smg_offset = 3
	if (gun_type == WeaponType.SMG) 
	|| (gun_type == WeaponType.Pistol) {
		smg_offset = 1
	} 
	
	start_shooting = true
    if (cooldown < 0)
	//&& (quickslot[selected_item, QSlot.LoadedAmmo] > 0) 
	{
		cooldown = firerate;
		part_type_direction(pt_gun_smoke, aim - 50, aim + 50, 0, 0);
		part_particles_create(sys_gun_smoke, x + xOffset * 1.5, y + yOffset * 1.5, pt_gun_smoke, irandom_range(3, 5))
		
		if quickslot[selected_item, QSlot.Buff_Overclocked] > 0 {
			full_auto = true
			part_particles_create(sys_fire_gui, x + xOffset, y + yOffset, pt_fire_gui, irandom_range(3, 5))
			
			if quickslot[selected_item, QSlot.Barrel] == spr_kunai_launcher {
				kunai++
				obj_barrel_GUI.scale = 3
				audio_play_sound(snd_kunai_printed, 1, 0, 5, 0, 1.5)
			}
		}
		
		if quickslot[selected_item, QSlot.Mag] == spr_marksman_mag {
			full_auto = false
		}
		
		
		burst_fired++
        quickslot[selected_item, QSlot.LoadedAmmo]--;

        audio_play_sound(weapon[_wID, GUN.SFX_SHOOTING], 10, false,
            (2 * noise), 0, (random_range(0.9, 1)) * (2 - noise) * gun_pitch);
			
		if (is_aiming) {
			obj_camera.shake_str += recoil / 6; // screenshake recoil
			
			if !obj_reticle.blocked {
			instance_create_depth(obj_reticle.x, obj_reticle.y, depth, optic_shape)
			}
			
			aim = point_direction(x, y, obj_reticle.x, obj_reticle.y + 5);
			obj_reticle.shake_angle = recoil * 1.5;
		} else {
			obj_camera.shake_str += recoil / 3	//screen vibrate hipfire recoil
		}
		
		// Shooting bullet
		for (var i = 0; i < weapon[_wID, GUN.BULLET_COUNT]; i++) {
			var shotgun_rng = 1
			if i > 1 {
				shotgun_rng = random_range(0.9, 1.1)
			}

	        with instance_create_depth(x + xOffset / smg_offset, y + yOffset / 3, depth, obj_player.bullet_type) {
				wID = other.wID
	            direction = aim + obj_player.inaccuracy - obj_player.pistol_recoil_angle
				if i > 1 {
					var acc = weapon[_wID, GUN.DEVIATION]
					direction = aim + random_range(-acc, acc)
					shotgun = true
				}
				
	            image_angle = direction;
				velocity = other.velocity * shotgun_rng
	        }
		}
		
		// Animate gun (manual)
		if !have_suppressor {
			gun_frame = (random_range(1, 4)) mod sprite_get_number( weapon[_wID, GUN.PLAYER_SPRITE] );
			if (global.enable_mflash) {
			obj_muzzle_flash.x = x
			obj_muzzle_flash.y = y
			flash_duration = 2
			}
			
			if quickslot[selected_item, QSlot.Mag] == spr_flash_shieldmag {
				instance_create_depth(x, y, depth, obj_muzzle_shield)
			}
			
			obj_patrol_spot.x = x
			obj_patrol_spot.y = y
		
			if blind_str > 0 {
			instance_create_depth(x, y, depth, obj_blindfire_spot)
			obj_blindfire_spot.x = x
			obj_blindfire_spot.y = y
			}
		}
		
		quickslot[selected_item, QSlot.Heat] += 0.01 * weapon[_wID, GUN.RECOIL]
		
		var knockback = weapon[_wID, GUN.RECOIL]
		var mouse_dir = point_direction(x, y, mouse_x, mouse_y) - 180;
		smooth_recoil_x += lengthdir_x(knockback, mouse_dir)
		smooth_recoil_y += lengthdir_y(knockback, mouse_dir)
		
		if (gun_type == WeaponType.Pistol)
		|| (gun_type == WeaponType.Bolt)
		|| (gun_type == WeaponType.Shotgun) {
			var angle = recoil * 1.2
			knockback = weapon[_wID, GUN.RECOIL] * 2
			if image_xscale == 1 {
			pistol_recoil_angle -= angle
			} else {
			pistol_recoil_angle += angle
			}
		}
		
		if bullet_type == obj_overpressure_bullet {
			self_knockback()
		}
		
		if (gun_type == WeaponType.Bolt)
		|| (gun_type == WeaponType.Shotgun) {
			if is_aiming {
			bolt_cycle = true
			} else {
			audio_play_sound(weapon[quickslot[selected_item, QSlot.Gun], GUN.SFX_SWAPPING], 1, 0, 1, 0, 0.7)
			is_ejecting = true
			}
		} else {
			is_ejecting = true
		}
    }
}

function self_knockback() {
	var knockback = recoil
	var mouse_dir = point_direction(x, y, mouse_x, mouse_y) - 180;
	smooth_knockback_x += lengthdir_x(knockback, mouse_dir)
	smooth_knockback_y += lengthdir_y(knockback, mouse_dir)
			
	if image_xscale = -1 {
		image_angle = -15
	} else {
		image_angle = 15
	}
}}
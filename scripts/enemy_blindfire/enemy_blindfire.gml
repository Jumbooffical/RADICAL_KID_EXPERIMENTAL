function enemy_blindfire() {
var mi = obj_player
var aim = point_direction(x, y, target.x, target.y) // Pointing the gun at the player
var weaponLength = sprite_get_bbox_right(weapon[ewID, GUN.SPRITE]) - sprite_get_xoffset(weapon[ewID, GUN.SPRITE])
var xOffset = lengthdir_x(weaponLength, aim)
var yOffset = lengthdir_y(weaponLength, aim)
var acc = enemy_acc

cooldown = cooldown - 1
// Firing
		if cooldown < 0 && current_mag > 0 {	
		current_mag--;
		cooldown = weapon[ewID, GUN.FIRE_DELAY]
		
		audio_play_sound_at(weapon[ewID, GUN.SFX_SHOOTING], x, y, 0,
		2000, 2200, 1, 0, 1, random_range(0.5, 0.8), 0, random_range(0.8, 1))
		
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
		eject(weapon[ewID, GUN.PLAYER_SPRITE], aim)
	}
}
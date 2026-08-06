if my_state == bullet_state.STASIS exit;
if my_state == bullet_state.SOULBINDED && other.object_index != obj_enemy_titan exit;

var nearest = instance_nearest(x, y, par_enemy)
if nearest.my_state = STATE.DODGE ||
nearest.my_state = STATE.TELEPORT exit;

//var absorb = nearest.armor_tier - armor_piercing

//if rng < absorb * 15 {
//	with instance_create_depth(x, y, depth, obj_damage_text) {
//		text = "BLOCKED!"
//	}
//	exit;
//}
	nearest.enemy_hp -= damage
	with instance_create_depth(x, y, depth, obj_damage_text) {
		text = round(other.damage)
	}

	with obj_player {
		if other.is_melee {
			gore += 1
			audio_play_sound(melee[other.meleeIndex, MELEE.HIT_SFX], 1, 0, 1, 0, random_range(0.8, 1))
			instance_create_depth(other.x, other.y, depth - 1, obj_slash_vfx)
		}
	}
	
	if !other.stun_immune {
		other.cooldown += stun
		other.cooldown = clamp(other.cooldown, 0, 180)
	}
instance_destroy()
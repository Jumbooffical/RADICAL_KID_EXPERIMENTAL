if my_state == bullet_state.STASIS exit;
if my_state == bullet_state.SOULBINDED exit;
//if obj_player.is_aiming && other.dot_received < 2 exit;

if (place_meeting(x + lengthdir_x(velocity, direction),
                  y + lengthdir_y(velocity, direction),
                  obj_tank_boss))
{
	audio_play_sound(global.deflect_snd[irandom(array_length(global.deflect_snd)-1)], 1, 0, global.deflect_snd_gain)
}

var nearest = instance_nearest(x, y, par_enemy)

if nearest.my_state = STATE.DODGE ||
nearest.my_state = STATE.TELEPORT exit;

var rng = irandom_range(1, 100)
var absorb = nearest.armor_tier - armor_piercing
if rng < absorb * 15 {
	with instance_create_depth(x, y, depth, obj_damage_text) {
		text = "BLOCKED!"
	}
	exit;
}
	nearest.enemy_hp -= damage * (nearest.damage_taken / 100 + 1)

	with instance_create_depth(x, y, depth, obj_damage_text) {
		text = other.damage
	}

	with obj_player {
		if selected_item == melee_quickslot {
			gore += 1
			audio_play_sound(melee[meleeIndex, MELEE.HIT_SFX], 1, 0, 1, 0, random_range(0.8, 1))
			instance_create_depth(other.x, other.y, depth - 1, obj_slash_vfx)
		}
	}
	
	if !other.stun_immune {
		other.cooldown += stun
	}
instance_destroy()
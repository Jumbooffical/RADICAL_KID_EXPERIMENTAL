if my_state == bullet_state.STASIS exit;
//if obj_player.is_aiming && other.dot_received < 2 exit;

global.deflect_snd = [snd_deflecting1, snd_deflecting2, snd_deflecting3]
if (place_meeting(x + lengthdir_x(velocity, direction),
                  y + lengthdir_y(velocity, direction),
                  obj_tank_boss))
{
	audio_play_sound(global.deflect_snd[irandom(array_length(global.deflect_snd)-1)], 1, 0, 3)
}


var nearest = instance_nearest(x, y, par_ranged_enemy)

nearest.enemy_hp -= damage * (nearest.damage_taken / 100 + 1)

with instance_create_depth(x, y, depth, obj_damage_text) {
	text = other.damage
}

with obj_player {
	if selected_item == 2 {
	gore += 1
	audio_play_sound(melee[meleeIndex, MELEE.HIT_SFX], 1, 0, 1, 0, random_range(0.8, 1))
	instance_create_depth(other.x, other.y, depth - 1, obj_slash_vfx)
	}
}

instance_destroy()

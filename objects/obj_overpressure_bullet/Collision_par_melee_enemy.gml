with other {
var knockback = other.damage * 0.7
var player_dir = point_direction(x, y, obj_player.x, obj_player.y)
smooth_knockback_x -= lengthdir_x(knockback, player_dir)
smooth_knockback_y -= lengthdir_y(knockback, player_dir)		
path_end(); path_finished = true;
}

with obj_player {
	if selected_item == 2 {
	gore += 1
	audio_play_sound(melee[meleeIndex, MELEE.HIT_SFX], 1, 0, 1, 0, random_range(0.8, 1))
	instance_create_depth(other.x, other.y, depth - 1, obj_slash_vfx)
	}
}

var nearest = instance_nearest(x, y, obj_melee_enemy)

nearest.enemy_hp -= damage * (nearest.damage_taken / 100 + 1)

with instance_create_depth(x, y, depth, obj_damage_text) {
	text = other.damage
}
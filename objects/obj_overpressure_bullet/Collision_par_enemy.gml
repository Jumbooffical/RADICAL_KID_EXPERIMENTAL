with other {
	var knockback = other.damage * 0.3
	knockback = clamp(knockback, 0, 3)
	var player_dir = point_direction(x, y, obj_player.x, obj_player.y)
	smooth_knockback_x -= lengthdir_x(knockback, player_dir)
	smooth_knockback_y -= lengthdir_y(knockback, player_dir)		
	path_end(); path_finished = true;
}

event_inherited()
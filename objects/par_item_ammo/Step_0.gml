loot_alarm--
if loot_alarm > 0 exit;
if in_shop exit;

if distance_to_object(obj_player) < 250 {
	magnet = true
}

if magnet {
	var dir = point_direction(x, y, obj_player.x, obj_player.y)
	x += lengthdir_x(12, dir)
	y += lengthdir_y(12, dir)
}
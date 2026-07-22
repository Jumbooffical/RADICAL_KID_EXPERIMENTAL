if (id > other.id) {
	var dir = point_direction(x, y, obj_player.x, obj_player.y)
	x += lengthdir_x(3, dir)
	y += lengthdir_y(3, dir)
}
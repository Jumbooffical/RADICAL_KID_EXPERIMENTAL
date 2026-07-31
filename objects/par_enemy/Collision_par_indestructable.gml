//if sniper_minion {
	var dir = point_direction(x, y, obj_player.x, obj_player.y)
	x += lengthdir_x(1, dir)
	y += lengthdir_y(1, dir)
//} else {
//	if (id > other.id) {

//	    var push_amt = 1;

//	    var dx = sign(x - other.x);
//	    var dy = sign(y - other.y);

//	    x += dx * push_amt;
//	    y += dy * push_amt;
//	}
//}
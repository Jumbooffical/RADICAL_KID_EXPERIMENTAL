function next_room() {
	if (global.level-1) < array_length(global.all_rooms) {
		for (var i = 0; i < global.level; i++) {
			room_goto(global.all_rooms[i])
		}
	} else {
		var url = irandom(2)
		switch (url) {
			case 0:
				url_open("https://www.youtube.com/watch?v=5IXQ6f6eMxQ")
			break;
			
			case 1:
				url_open("https://www.youtube.com/watch?v=ySnO1e1y0RE")
			break;
			
			case 2:
				url_open("https://www.youtube.com/watch?v=Cj2TBlqD2cI")
			break;
		}
		game_restart()
	}
	global.level++
	
	obj_player.x = obj_spawn.x;
    obj_player.y = obj_spawn.y;
	
	global.grid_dirty = true;
	
	if global.level >= global.easy_room_amount + 3
	&& !boss_room {
		global.tier++
	}
}
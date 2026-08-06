function next_room() {
	if (global.level-1) < array_length(global.all_rooms) {
		for (var i = 0; i < global.level; i++) {
			room_goto(global.all_rooms[i])
		}
	} else {
		// YOUTUBE LINK MUST BE SANITIZED!!!!!!!!!!!!
		var url = irandom(2)
		switch (url) {
			case 0:
				url_open("https://www.youtube.com/watch?v=5IXQ6f6eMxQ")
			break;
			
			case 1:
				url_open("https://www.youtube.com/watch?v=ySnO1e1y0RE")
			break;
			
			case 2:
				url_open("https://www.youtube.com/watch?v=Ngpd6nZzdTM")
			break;
		}
		
		if obj_player.death_count == 0 {
		global.unlocked_hardmode = true
		save_progression()
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
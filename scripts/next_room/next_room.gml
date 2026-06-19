function next_room(){
	level_manager()
	
	for (var i = 0; i < global.level; i++) {
		room_goto(global.all_rooms[i])
	}
	global.level++
	
	obj_player.x = obj_spawn.x;
    obj_player.y = obj_spawn.y;
	
	global.grid_dirty = true;
}
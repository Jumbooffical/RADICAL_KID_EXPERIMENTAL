function GenerateDungeon(_map,_width,_height,_min_rm_size,_max_rm_size,_room_coverage) {
	
	room_list = [];
	room_no = 5;
	
	static map_width = _width;
    static map_height = _height;
    static map_area = map_width*map_height;
    static min_rm_size = _min_rm_size;
    static max_rm_size = _max_rm_size;
    static coverage = _room_coverage;
    coverage = clamp(coverage,0,1);
	
	//Updates the values stored in the map to correspond with the placed rooms
    //{array} map The 2D array used for the map
	static UpdateMap = function(map) {
         
	    for (var i=0;i<room_no;i++) {
	        with (room_list[i]) {
                 
	            for (var xx=0;xx<width;xx++) {
	                for (var yy=0;yy<height;yy++) {
	                    other.map[x+xx][y+yy] = ROOM;
	                }
	            }
	        }
	    }
	}
	
	// Attempts to generate enough rooms to fill the coverage percent 
	// provided for the map
	static GenerateTotalRooms = function(map,map_width,map_height,map_area,coverage,min_rm_size,max_rm_size,move_rooms,update_map) {
		var success = false;
		do {
			var coverage_complete = false;
			while !coverage_complete {
				
				var _w = irandom_range(min_rm_size, max_rm_size);
                var _h = irandom_range(min_rm_size, max_rm_size);
				var _x = map_width div 2 + irandom_range(-2,2) - (_w div 2);
                var _y = map_height div 2 + irandom_range(-2,2) - (_h div 2);
				
				array_push(room_list, new CreateRoom(_x, _y, _w, _h, array_length(room_list)));
				
				var total_room_area = 0;
				var cancel_pos = -1;
				room_no = array_length(room_list)
				for (var i = 0; i < room_no; i++) {
					var _rm = room_list[i];
					
					total_room_area += ((_rm.width + 4)*(_rm.height + 4));
					if (total_room_area > map_area * coverage) {
						cancel_pos = i - 1;
						break;
					}
				}
				
				if (cancel_pos != -1) {
					delete room_list[cancel_pos];
					array_delete(room_list, cancel_pos, array_length(room_list)-cancel_pos);
					coverage_complete = true;
					room_no = array_length(room_list);
				}
			}
			
			if (move_rooms()) {
				success = true
			} else {
				for (var i = 0; i < room_no; i++) {
					delete room_list[i];
				}
				room_list = []
			}	
		}
		until (success);
		
		update_map(map);
	}
	
	// Uses steering behaviour to try to push all the rooms away from each other
	static MoveRooms = function() {
	    var move_attempts = 0;
	    var total_attempts = 0;
	    do {
             
	        var pushed = false;
             
	        for (var i = 0; i < room_no; i++) {
                 
	            var _this_pushed = false;
	            var _rm = room_list[i];
	            var _steer_x = 0;
	            var _steer_y = 0;
                 
	            for (var k = 0; k < room_no; k++) {
	                if (i != k) {
	                    var _rm2 = room_list[k];
	                    if (rectangle_in_rectangle(_rm.x-2,_rm.y-2,_rm.x2+2,_rm.y2+2,_rm2.x,_rm2.y,_rm2.x2,_rm2.y2) > 0) {
	                        _steer_x += (_rm.center_x-_rm2.center_x);
	                        _steer_y += (_rm.center_y-_rm2.center_y);
	                        _this_pushed = true;
	                        pushed = true;
	                    }
	                }
	            }
                 
	            if (_this_pushed) {
	                if (_steer_x == 0) {
	                    _steer_x++;
	                }
	                if (_steer_y == 0) {
	                    _steer_y++;
	                }
	                _rm.x += sign(_steer_x);
	                _rm.y += sign(_steer_y);
	                _rm.Update();
	            }
                 
	        }
 
	        move_attempts++;
	        if (move_attempts > 200) {
	            for (var i = 0; i < room_no; i++) {
	                var _rm = room_list[i];
	                _rm.x = round(map_width/2)+irandom_range(-3,3)-round(_rm.width/2);
	                _rm.y = round(map_height/2)+irandom_range(-3,3)-round(_rm.height/2);
	            }
	            move_attempts = 0;
	            total_attempts++;
	        }
             
	        if (total_attempts > 100) {
	            return false;
	        }
             
	    }
	    until (pushed == false);
         
	    return true;
         
	}
	GenerateTotalRooms(_map,map_width,map_height,map_area,coverage,min_rm_size,max_rm_size,MoveRooms,UpdateMap);
}
#macro EMPTY 0
#macro ROOM 1

map_width = 200;
map_height = 200;

// Create 2D array
var dungeon_map = array_create(map_width);

for (var i = 0; i < map_width; i++) {
    dungeon_map[i] = array_create(map_height, EMPTY);
}

GenerateDungeon(dungeon_map, map_width, map_height, 32, 32, 0.8);
for (var i = 0; i < room_no; i++)
{
    var rectangle = room_list[i];

    var scale_x = rectangle.width / sprite_get_width(spr_wall);
	var scale_y = rectangle.height / sprite_get_height(spr_wall);

	var final_w = sprite_get_width(spr_wall) * scale_x;
	var final_h = sprite_get_height(spr_wall) * scale_y;

	var rect = instance_create_layer(
	    rectangle.center_x - final_w / 22,
	    rectangle.center_y - final_h / 22,
	    layer,
	    par_indestructable
	);

	rect.image_xscale = scale_x;
	rect.image_yscale = scale_y;
}
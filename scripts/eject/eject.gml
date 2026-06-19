function eject(_sprite, _dir) {
	var dir = _dir;
	var dist_x = sprite_get_bbox_left(_sprite);
	var dist_y = sprite_get_bbox_top(_sprite);
	
	dist_x = sprite_get_bbox_left(_sprite);
	dist_y = sprite_get_bbox_top(_sprite);

	var world_x = gun_x + lengthdir_x(dist_x, dir);
	var world_y = gun_y + lengthdir_y(dist_y, dir);
	
	if image_xscale = 1 {
	world_x = x - lengthdir_x(dist_x, dir);
	}
	
	with instance_create_depth(world_x, world_y, depth, obj_casing) {
		casing_type = other.gun_type
						
		if other.image_xscale = -1 {
			left = true
		}
	}
}
function afterimage(_x, _y, _frequency) {
	if(global.afterimg_timer % _frequency == 0) {
		instance_create_depth(_x, _y, depth, obj_player_afterimg, 
		{sprite_index, image_index, image_xscale})
	}
}
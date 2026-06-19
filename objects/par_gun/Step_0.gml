// Fix the gun to sync with the player arm via HARDCODING
//if instance_exists(owner)
//{
//    x = owner.x;
//    y = owner.y;
//}

image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)
if obj_player.is_aiming {
	image_angle = point_direction(obj_player.x, obj_player.y, obj_reticle.x, obj_reticle.y);
}


image_speed = 3
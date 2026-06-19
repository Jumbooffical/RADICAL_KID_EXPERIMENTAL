function enemy_throwing(){
	var mi = obj_player
	var aim = point_direction(x, y, mi.x, mi.y)
	var vel = 0
	
	if distance_to_object(obj_player) < base_aggro / 1.5 {
		vel = 7		
	} else {
		vel = 21
	}
	
	with instance_create_depth(x, y, depth, obj_enemy_m62_unpin) {
        direction = aim
		velocity = vel
    }
	
	audio_play_sound(snd_unpin, 1, 0, 0.5, 0, 0.8)
}
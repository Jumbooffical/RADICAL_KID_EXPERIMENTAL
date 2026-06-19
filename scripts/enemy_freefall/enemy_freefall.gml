function enemy_freefall(){
	draw_shadow(sprite_index, global.grayness, global.shadow_x, global.shadow_y, global.all_offset, 
	image_xscale * global.shadow_xscale, global.shadow_yscale, global.shadow_angle, 
	image_alpha * 0.7 - (-fall/1999))
	
	fall += zspd;
	if fall > 0 {
		fall = 0 //inactive
	} else {
		zspd += grav
		afterimage(x, y + fall, 1)
	}
	
	draw_sprite_ext(sprite_index, 0, x, y + fall, image_xscale, 1, image_angle, c_white, 1)
	draw_sprite(weapon[ewID, GUN.PLAYER_SPRITE], 0, x, y + fall)
	
	if fall == 0 {		
		if is_deployed {
		obj_camera.shake_str += 125
		audio_play_sound(snd_titan_collapse, 1, 0, 2, 0, 0.9)
		obj_controller.zspd = -9
		obj_player.hp -= 25
		is_deployed = false
		}
		
		state_delay--
		if state_delay < 0 {
		my_state = STATE.ALERT
		}
	} else {
		var mi = obj_player
		dir = point_direction(x, y, mi.x, mi.y)
		x += lengthdir_x(7, dir) 
		y += lengthdir_y(7, dir)
	}
}
function movement_key(_up, _down, _left, _right){
	var _xinput = keyboard_check(_right) - keyboard_check(_left);
	var _yinput = keyboard_check(_down) - keyboard_check(_up);
	var len = point_distance(0, 0, _xinput, _yinput);
	if (len > 0) {
	    _xinput /= len;
	    _yinput /= len;
	}

	move_and_collide(_xinput * current_spd, _yinput * current_spd, par_indestructable, 4, 0, 0,current_spd,current_spd);
	if (_xinput != 0 || _yinput != 0) {
	    my_state = state.moving;
	} else {
	    my_state = state.idle;
	}

	step_dist += point_distance(x, y, xprevious, yprevious);
	if (step_dist > 110)
	{
	    audio_play_sound(snd_step_asphalt, 1, false, 0.25, 0, random_range(0.8, 1));
	    step_dist = 0;
	}
}
function error_feedback() {
	audio_play_sound(snd_burst_fail, 1, 0, 1, 0, random_range(1, 1.1))
	obj_camera.shake_str += 5
}
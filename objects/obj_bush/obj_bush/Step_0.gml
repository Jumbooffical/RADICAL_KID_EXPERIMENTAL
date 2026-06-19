if bush_hp <= 0 {
	instance_destroy()
	audio_play_sound(snd_box_dead, 10, false, 1, 0, 1);
}
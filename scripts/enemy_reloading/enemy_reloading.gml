function enemy_reloading(){
if current_mag == 0 && (!reload)
{
	reload = true
	reload_timer = weapon[ewID, GUN.RELOAD_DELAY]
	audio_play_sound(weapon[ewID, GUN.SFX_RELOADING], 10, false, random_range(0.3, 0.5), 0, 1);
}

	if (reload) {
	    reload_timer -= 1;

	    if (reload_timer <= 0) {
		    current_mag = weapon[ewID, GUN.MAG_SIZE]

	        reload = false;
			retreat = false;
	    }
	}
}
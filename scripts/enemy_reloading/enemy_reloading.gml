function enemy_reloading() {
var amount = 0
if current_mag == 0 && (!reload) {
	reload = true
	if gun_type == WeaponType.Shotgun {
		reload_timer = weapon[ewID, GUN.RELOAD_DELAY] * weapon[ewID, GUN.MAG_SIZE] + 1
		loop = weapon[ewID, GUN.RELOAD_DELAY]
		amount = weapon[ewID, GUN.MAG_SIZE]
	} else {
		reload_timer = weapon[ewID, GUN.RELOAD_DELAY]
		audio_play_sound(weapon[ewID, GUN.SFX_RELOADING], 10, false, random_range(0.3, 0.5), 0, 1);
	}
}
loop--
if loop == 0 & amount > 0 {
	audio_play_sound(weapon[ewID, GUN.SFX_RELOADING], 10, false, random_range(0.3, 0.5), 0, 1);	
	loop = weapon[ewID, GUN.RELOAD_DELAY]
	amount--
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
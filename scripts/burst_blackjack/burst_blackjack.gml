function burst_blackjack(){
	full_auto = true;
	
	if !burst_failure {
		if mouse_check_button_released(mb_left) && start_shooting {
			if burst_fired != 21 {
				burst_failure = true;
			} else {
				audio_play_sound(snd_succeed, 1, 0, 10, 0, 1)
				global.green_glow = 0.25
				curse = false
				quickslot[selected_item, QSlot.Mag] = spr_mag
			}
		}

		if burst_fired > 21 {
			burst_failure = true;
		}
	}	

	if burst_failure {
		hp -= 50	
		burst_fired = 0
		burst_failure = false
		audio_play_sound(snd_dead, 1, 0, 1, 0, 1)
	}
			
	//Hardcode fix when selecting mag while timer end did not run the fucking boolean
	if quickslot[selected_item, QSlot.LoadedAmmo] == mag_size {
		burst_failure = false
	}
}
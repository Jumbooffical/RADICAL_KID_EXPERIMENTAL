function burst_amplifier(){
	full_auto = true;
	
	if !burst_failure {
		if mouse_check_button_released(mb_left) && start_shooting {
			if burst_fired != 3 {
				burst_failure = true;
				sound_alarm = 1
			}
			start_shooting = false
			burst_fired = 0;
		}

		if burst_fired > 3 {
			burst_failure = true;
			sound_alarm = 1
		}
	}
			
	stat.damage_output = base_damage * 1.5 
	if burst_failure {
		stat.damage_output = base_damage * 0.8 
	}
			
	//Hardcode fix when selecting mag while timer end did not run the fucking boolean
	if quickslot[selected_item, QSlot.LoadedAmmo] == mag_size {
		burst_failure = false
	}
}
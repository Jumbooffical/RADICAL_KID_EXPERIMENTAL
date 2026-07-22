enemy_inherited()


if is_bobbing {
	if bob_alarm > 0 {
		bob_alarm--
	}
	if bob_alarm < 60 {
		x += 4
	} else {
		x -= 4
	}
	
	if bob_alarm == 1 {		
		bob_alarm = 120
	}
}
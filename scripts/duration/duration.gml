function duration(_minute, _second) {
	var sec = 0
	var mins = 0
	var timer = 0
	
	sec = _second * 60
	mins = _minute * 3600
	timer = sec + mins
	
	return timer;
}
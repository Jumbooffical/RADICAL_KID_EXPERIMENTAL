function apply_blinding(){
	if is_blind {
		blind_str += 0.05
		if blind_str > 4 {
		blind_str = 4
		}
	} else {
		if blind_str > 0 {
		blind_str -= 0.08
		}
	}
}
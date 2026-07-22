function combo_mechanic() {
	global.afterimg_timer++
	
	if !is_reloading {
	global.combo_cd--
	}
	
	global.combo_cd = clamp(global.combo_cd, 0, global.max_combo_cd)
	global.bloodlust = clamp(global.bloodlust, 1, 2)
	global.bloodlust = lerp(global.bloodlust, 1, 0.0065)
	
	spd_mult = spd_mult * global.bloodlust
	
	if global.combo_cd <= 0 {
	global.combo = 0
	}
	
	if global.bloodlust > 1.1 {
		afterimage(x, y, 3)
	}
}
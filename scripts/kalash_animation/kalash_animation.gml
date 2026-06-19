function kalash_animation() {
	gun_frame = 0
	
	if !bolt_cycle && cooldown > firerate/2.5 {
	var knockback = 3
	var mouse_dir = point_direction(x, y, mouse_x, mouse_y);
	smooth_recoil_x -= lengthdir_x(knockback, mouse_dir)
	smooth_recoil_y -= lengthdir_y(knockback, mouse_dir)
	gun_frame = 1
	}
}
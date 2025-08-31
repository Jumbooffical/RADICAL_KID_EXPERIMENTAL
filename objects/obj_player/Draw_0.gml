draw_self()

// Draw gun
if (inventory[selected_item, 0] != noone) && player_armed = true {
	var flip = (mouse_x > x) ? 1 : -1;		// If pointing the gun at the left, flip it
	draw_sprite_ext(weapon[inventory[selected_item, 0], 2], image_index, x, y, 1, flip, par_gun.image_angle, c_white, 1);
}
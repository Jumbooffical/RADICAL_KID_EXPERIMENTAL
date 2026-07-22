function loot_ammo(_amount) {
	var nearest_ammo = instance_nearest(x, y, par_item_ammo);
	audio_play_sound(snd_ammoloot, 10, false, 1, 0, 1);
	obj_player.current_magazine[nearest_ammo.index] += _amount
		
	with (nearest_ammo) {
	instance_destroy()
	}
}
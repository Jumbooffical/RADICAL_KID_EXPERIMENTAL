if crate_hp <= 0 {
	instance_destroy()
	drop_money(obj_stack_of_cash, irandom_range(0, 2))
	drop_money(obj_coin, irandom_range(20, 40))
	drop_money(obj_cash, irandom_range(3, 5))
		
	audio_play_sound(snd_coins_spill, 1, 0, 1)
}
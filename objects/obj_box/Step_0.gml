if crate_hp <= 0 {
	instance_destroy()
	part_particles_create(sys_wood_splash, x, y, pt_wood_splash, irandom_range(15, 20))
	audio_play_sound(snd_box_dead, 10, false, 1, 0, 1);
}
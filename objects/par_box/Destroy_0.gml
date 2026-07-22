mp_grid_clear_all(global.grid);
mp_grid_add_instances(global.grid, par_pathwall, false);

var snd = 0
switch (material) {
	case MAT.WOOD:
		snd = snd_box_dead
		part_particles_create(global.sys_wood_splash, x, y, global.pt_wood_splash, irandom_range(15, 20))	
	break;
	
	case MAT.METAL:
		snd = snd_metal_dead
		part_particles_create(global.sys_metal_splash, x, y, global.pt_metal_splash, irandom_range(15, 20))
	break;
}


audio_play_sound(snd, 10, false, 1, 0, 1);
mp_grid_clear_all(global.grid);
mp_grid_add_instances(global.grid, par_pathwall, false);

switch (material) {
	case MAT.WOOD:
		part_particles_create(global.sys_wood_splash, x, y, global.pt_wood_splash, irandom_range(15, 20))	
	break;
	
	case MAT.METAL:
		part_particles_create(global.sys_metal_splash, x, y, global.pt_metal_splash, irandom_range(15, 20))
	break;
}
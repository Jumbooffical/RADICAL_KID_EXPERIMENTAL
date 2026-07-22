
global.pt_wood_splash = part_type_create();
global.sys_wood_splash = part_system_create();

part_type_shape(global.pt_wood_splash, pt_shape_line);
part_type_size(global.pt_wood_splash, 2, 3, 0, 0);
part_type_speed(global.pt_wood_splash, 7, 7, 0, 0);
part_type_life(global.pt_wood_splash, 15, 60);
part_type_alpha2(global.pt_wood_splash, 0.5, 0);
part_type_orientation(global.pt_wood_splash, 0, 360, 1, 0, false)
part_type_direction(global.pt_wood_splash, 0, 360, 0, 0)
part_type_colour1(global.pt_wood_splash, #A0410D)

global.pt_metal_splash = part_type_create();
global.sys_metal_splash = part_system_create();

part_type_shape(global.pt_metal_splash, pt_shape_square);
part_type_size(global.pt_metal_splash, 1, 2, 0, 0);
part_type_speed(global.pt_metal_splash, 7, 7, 0, 0);
part_type_life(global.pt_metal_splash, 15, 60);
part_type_alpha2(global.pt_metal_splash, 0.5, 0);
part_type_orientation(global.pt_metal_splash, 0, 360, 1, 0, false)
part_type_direction(global.pt_metal_splash, 0, 360, 0, 0)
part_type_colour1(
    global.pt_metal_splash,
    make_color_rgb(150, 150, 150)
);
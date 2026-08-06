if live_call() return live_result
pt_wood_splash = part_type_create();
sys_wood_splash = part_system_create();

part_type_shape(pt_wood_splash, pt_shape_line);
part_type_size(pt_wood_splash, 2, 3, 0, 0);
part_type_speed(pt_wood_splash, 7, 7, 0, 0);
part_type_life(pt_wood_splash, 15, 60);
part_type_alpha2(pt_wood_splash, 0.5, 0);
part_type_orientation(pt_wood_splash, 0, 360, 1, 0, false)
part_type_direction(pt_wood_splash, 0, 360, 0, 0)
part_type_colour1(pt_wood_splash, #A0410D)

pt_metal_splash = part_type_create();
sys_metal_splash = part_system_create();

part_type_shape(pt_metal_splash, pt_shape_square);
part_type_size(pt_metal_splash, 1, 2, 0, 0);
part_type_speed(pt_metal_splash, 7, 7, 0, 0);
part_type_life(pt_metal_splash, 15, 60);
part_type_alpha2(pt_metal_splash, 0.5, 0);
part_type_orientation(pt_metal_splash, 0, 360, 1, 0, false)
part_type_direction(pt_metal_splash, 0, 360, 0, 0)
part_type_colour1(
    pt_metal_splash,
    make_color_rgb(150, 150, 150)
);
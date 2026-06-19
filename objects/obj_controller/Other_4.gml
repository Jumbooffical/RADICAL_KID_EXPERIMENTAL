global.grid = mp_grid_create(
    0, 0,
    room_width div cell_size,
    room_height div cell_size,
    cell_size,
    cell_size
);
mp_grid_add_instances(global.grid, par_pathwall, false);

global.pt_explosion_smoke = part_type_create();
global.sys_explosion_smoke = part_system_create();

part_type_shape(global.pt_explosion_smoke, pt_shape_cloud);
part_type_size(global.pt_explosion_smoke, 8, 8, 0, 0);
part_type_speed(global.pt_explosion_smoke, 0.5, 0.5, 0, 0);
part_type_direction(global.pt_explosion_smoke, 0, 360, 0, 0);
part_type_life(global.pt_explosion_smoke, 500, 600);
part_type_alpha2(global.pt_explosion_smoke, 1, 0);
part_type_colour1(global.pt_explosion_smoke, c_gray)
part_system_depth(global.sys_explosion_smoke, -99)

global.pt_explosion = part_type_create();
global.sys_explosion = part_system_create();

part_type_shape(global.pt_explosion, pt_shape_explosion);
part_type_size(global.pt_explosion, 6, 6, 0, 0);
part_type_speed(global.pt_explosion, 0.5, 0.5, 0, 0);
part_type_life(global.pt_explosion, 11, 11);
part_type_orientation(global.pt_explosion, 0, 360, 1, 0, false)
part_type_colour2(global.pt_explosion, c_yellow, c_orange)
part_type_direction(global.pt_explosion, 0, 360, 0, 0);

global.pt_smoke_trail = part_type_create();
global.sys_smoke_trail = part_system_create();

part_type_shape(global.pt_smoke_trail, pt_shape_cloud);
part_type_speed(global.pt_smoke_trail, 0.1, 0.1, 0, 0);
part_type_direction(global.pt_smoke_trail, 0, 360, 0, 0);
part_type_life(global.pt_smoke_trail, 500, 500);
part_type_alpha2(global.pt_smoke_trail, 0.1, 0);
part_type_orientation(global.pt_smoke_trail, 0, 360, 1, 0, false)
part_type_size(global.pt_smoke_trail, 0.2, 0.2, 0, 0);

global.pt_smoke_cloud = part_type_create();
global.sys_smoke_cloud = part_system_create();

part_type_shape(global.pt_smoke_cloud, pt_shape_cloud);
part_type_size(global.pt_smoke_cloud, 8, 8, 0, 0);
part_type_speed(global.pt_smoke_cloud, 0.5, 0.5, 0, 0);
part_type_direction(global.pt_smoke_cloud, 0, 360, 0.1, 0);
part_type_life(global.pt_smoke_cloud, 50, 60);
part_type_alpha2(global.pt_smoke_cloud, 1, 0);
part_type_colour1(global.pt_smoke_cloud, c_white)
part_type_orientation(global.pt_smoke_cloud, 0, 360, 0.1, 0, false)
part_system_depth(global.sys_smoke_cloud, -99)


global.pt_blood_mist = part_type_create();
global.sys_blood_mist = part_system_create();

part_type_shape(global.pt_blood_mist, pt_shape_cloud);
part_type_size(global.pt_blood_mist, 1.5, 2, 0, 0);
part_type_speed(global.pt_blood_mist, 0.5, 0.5, 0, 0);
part_type_direction(global.pt_blood_mist, 0, 360, 0, 0);
part_type_life(global.pt_blood_mist, 100, 100);
part_type_alpha2(global.pt_blood_mist, 0, 0.5);
part_type_colour1(global.pt_blood_mist, c_maroon)
part_system_depth(global.sys_blood_mist, -99)


global.pt_spark = part_type_create();
global.sys_spark = part_system_create();

part_type_shape(global.pt_spark, pt_shape_pixel);
part_type_size(global.pt_spark, 8, 13, 0, 0);
part_type_speed(global.pt_spark, 11, 15, 0, 0);
part_type_direction(global.pt_spark, 0, 360, 0.1, 0);
part_type_life(global.pt_spark, 15, 30);
part_type_colour1(global.pt_spark, c_yellow)
part_type_orientation(global.pt_spark, 0, 360, 0.1, 0, false)


global.pt_black_smoke = part_type_create();
global.sys_black_smoke = part_system_create();

part_type_shape(global.pt_black_smoke, pt_shape_cloud);
part_type_size(global.pt_black_smoke, 1.5, 2, 0, 0);
part_type_speed(global.pt_black_smoke, 0.5, 1.5, 0, 0);
part_type_life(global.pt_black_smoke, 250, 360);
part_type_alpha2(global.pt_black_smoke, 0.7, 0);
part_type_orientation(global.pt_black_smoke, 0, 360, 1, 0, false)
part_system_depth(global.sys_black_smoke, -99)
part_type_colour2(global.pt_black_smoke, c_black, c_gray)



global.pt_titan_fire = part_type_create();
global.sys_titan_fire = part_system_create();

part_type_shape(global.pt_titan_fire, pt_shape_square);
part_type_size(global.pt_titan_fire, 0.01, 0.3, 0, 0);
part_type_speed(global.pt_titan_fire, 0.5, 3, 0, 0);
part_type_life(global.pt_titan_fire, 15, 60);
part_type_alpha2(global.pt_titan_fire, 0.5, 0);
part_type_colour3(global.pt_titan_fire, c_yellow, c_orange, c_red)
part_type_direction(global.pt_titan_fire, 80, 90, 0, 1)


global.pt_titan_materialize = part_type_create();
global.sys_titan_materialize = part_system_create();

part_type_shape(global.pt_titan_materialize, pt_shape_square);
part_type_size(global.pt_titan_materialize, 0.05, 0.35, 0, 0);
part_type_speed(global.pt_titan_materialize, 1.5, 3, 0, 0);
part_type_life(global.pt_titan_materialize, 30, 60);
part_type_alpha2(global.pt_titan_materialize, 0, 0.7);
part_type_colour3(global.pt_titan_materialize, c_white, c_white, c_aqua)
part_type_direction(global.pt_titan_materialize, -90, -90, 0, 1)
global.pt_spark = part_type_create();
global.sys_spark = part_system_create();

part_type_shape(global.pt_spark, pt_shape_pixel);
part_type_size(global.pt_spark, 8, 13, 0, 0);
part_type_speed(global.pt_spark, 11, 15, 0, 0);
part_type_direction(global.pt_spark, 0, 360, 0.1, 0);
part_type_life(global.pt_spark, 15, 30);
part_type_colour3(global.pt_spark, c_yellow, c_orange, c_red)
part_type_orientation(global.pt_spark, 0, 360, 0.1, 0, false)
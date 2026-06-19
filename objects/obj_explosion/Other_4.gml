pt_explosion_smoke = part_type_create();
sys_explosion_smoke = part_system_create();

part_type_shape(pt_explosion_smoke, pt_shape_cloud);
part_type_size(pt_explosion_smoke, 8, 8, 0, 0);
part_type_speed(pt_explosion_smoke, 0.5, 0.5, 0, 0);
part_type_direction(pt_explosion_smoke, 0, 360, 0, 0);
part_type_life(pt_explosion_smoke, 500, 600);
part_type_alpha2(pt_explosion_smoke, 1, 0);
part_type_colour1(pt_explosion_smoke, c_gray)
//part_type_orientation(pt_explosion_smoke, 0, 360, 0.5, 0, false)

pt_explosion = part_type_create();
sys_explosion = part_system_create();

part_type_shape(pt_explosion, pt_shape_explosion);
part_type_size(pt_explosion, 6, 6, 0, 0);
part_type_speed(pt_explosion, 0.5, 0.5, 0, 0);
part_type_life(pt_explosion, 11, 11);
part_type_orientation(pt_explosion, 0, 360, 1, 0, false)
part_type_colour3(pt_explosion, c_white, c_orange, c_red)
part_type_direction(pt_explosion, 0, 360, 0, 0);
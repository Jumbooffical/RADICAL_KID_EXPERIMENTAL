pt_smoke_cloud = part_type_create();
sys_smoke_cloud = part_system_create();

part_type_shape(pt_smoke_cloud, pt_shape_cloud);
part_type_speed(pt_smoke_cloud, 0.3, 0.3, 0, 0);
part_type_direction(pt_smoke_cloud, 0, 360, 0, 0);
part_type_life(pt_smoke_cloud, 200, 200);
part_type_alpha2(pt_smoke_cloud, 0.5, 0);
part_type_orientation(pt_smoke_cloud, 0, 360, 1, 0, false)
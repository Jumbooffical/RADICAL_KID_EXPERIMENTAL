pt_brick_splash = part_type_create();
sys_brick_splash = part_system_create();

part_type_sprite(pt_brick_splash, pt_shape_brick, false, false, false);
part_type_size(pt_brick_splash, 2.2, 2.3, 0, 0);
part_type_speed(pt_brick_splash, 4, 4, 0, 0);
part_type_life(pt_brick_splash, 15, 60);
part_type_alpha2(pt_brick_splash, 0.5, 0);
part_type_orientation(pt_brick_splash, 0, 360, 1, 0, false)
part_type_direction(pt_brick_splash, 0, 360, 0, 0)
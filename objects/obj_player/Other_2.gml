pt_gun_smoke = part_type_create();
sys_gun_smoke = part_system_create();

part_type_shape(pt_gun_smoke, pt_shape_cloud);
part_type_size(pt_gun_smoke, 0.3, weapon[wID, GUN.RECOIL] / 2, 0, 0);
part_type_speed(pt_gun_smoke, 0.5, 1.5, 0, 0);
part_type_life(pt_gun_smoke, 15, 160);
part_type_alpha2(pt_gun_smoke, 0.5, 0);
part_type_orientation(pt_gun_smoke, 0, 360, 1, 0, false)
part_system_depth(sys_gun_smoke, -99)


pt_fire_gui = part_type_create();
sys_fire_gui = part_system_create();

part_type_shape(pt_fire_gui, pt_shape_explosion);
part_type_size(pt_fire_gui, 0.3, 2, 0, 0);
part_type_speed(pt_fire_gui, 0.5, 2, 0, 0);
part_type_life(pt_fire_gui, 15, 30);
part_type_alpha2(pt_fire_gui, 0.5, 0);
part_type_orientation(pt_fire_gui, 0, 360, 1, 0, false)
part_type_colour3(pt_fire_gui, c_yellow, c_orange, c_red)


pt_bullet_trail = part_type_create();
sys_bullet_trail = part_system_create();

part_type_shape(pt_bullet_trail, pt_shape_square);
part_type_size(pt_bullet_trail, 0.01, 0.3, 0, 0);
part_type_speed(pt_bullet_trail, 0.5, 3, 0, 0);
part_type_life(pt_bullet_trail, 15, 60);
part_type_alpha2(pt_bullet_trail, 0.5, 0);
part_type_orientation(pt_bullet_trail, 0, 0, 1, 0, false)
part_type_colour3(pt_bullet_trail, c_yellow, c_orange, c_red)

global.sniper_revive = 2
var max_dist = global.radius * 3;
var dist = distance_to_object(obj_player);

x = mouse_x
y = mouse_y

if mouse_check_button(mb_left) {
size += 0.05
part_type_size(pt_smoke_cloud, size, size, 0, 0);
part_particles_create(sys_smoke_cloud, x, y, pt_smoke_cloud, 5)
} else {
size = 0.1
}
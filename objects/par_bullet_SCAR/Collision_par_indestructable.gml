if my_state == bullet_state.SMART exit
if my_state == bullet_state.HEATSEEK exit
if my_state == bullet_state.SOULBINDED exit
if sprite_index == spr_bouncing_bullet exit

with (obj_player) {
part_type_direction(pt_bullet_trail, 0, 360, 0, 0);
part_particles_create(sys_bullet_trail, other.x, other.y, pt_bullet_trail, 5)
}

instance_destroy();
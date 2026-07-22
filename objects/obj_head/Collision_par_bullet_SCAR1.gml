var nearest = instance_nearest(x, y, obj_ranged_enemy)

if dot_received > 1 {
nearest.enemy_hp -= 999
instance_destroy()
instance_destroy(other)
}

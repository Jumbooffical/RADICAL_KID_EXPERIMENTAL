var nearest = instance_nearest(x, y, par_enemy)

if dot_received > 1 {
nearest.enemy_hp -= 9999
instance_destroy()
instance_destroy(other)
}
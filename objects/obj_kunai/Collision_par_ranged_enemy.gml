var nearest = instance_nearest(x, y, par_ranged_enemy)
nearest.enemy_hp -= damage * (nearest.damage_taken / 100 + 1)

with instance_create_depth(x, y, depth, obj_damage_text) {
	text = other.damage
}
instance_destroy()
if obj_player.is_aiming {
other.enemy_hp -= damage * (other.damage_taken / 100 + 1)
}
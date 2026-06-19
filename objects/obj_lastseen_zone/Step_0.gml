timer--

if instance_exists(obj_ranged_enemy) {
var nearest = instance_nearest(x, y, obj_ranged_enemy)
if nearest.my_state == STATE.ATTACK 
|| (!collision_line(obj_ranged_enemy.x, obj_ranged_enemy.y, obj_player.x, obj_player.y, par_pathwall, true, true))
|| timer < 0 {
instance_destroy()
}
}
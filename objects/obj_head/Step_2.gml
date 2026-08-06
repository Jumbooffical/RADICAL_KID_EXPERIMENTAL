if !instance_exists(nearest) exit;
if !instance_exists(par_enemy) exit;

if nearest.death {
instance_destroy()
}

x = nearest.x
y = nearest.y

//Apply weakness
//for (var i = 0; i < dot_received; i++) {
//	damage_taken = 5 * i
//}
vulnerable--
vulnerable = clamp(vulnerable, 0, 5)

visible = global.pathfinding_debug
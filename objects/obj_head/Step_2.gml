if !instance_exists(nearest) exit;
if nearest.death {
instance_destroy()
}

x = nearest.x
y = nearest.y

//Apply weakness
//for (var i = 0; i < dot_received; i++) {
//	damage_taken = 5 * i
//}

if dot_received < 1 {
dot_received = 1
}

if place_meeting(x, y, obj_dot) {
dot_received = 2
} else {
dot_received = 1
}

if dot_received > 1 {
	nearest.damage_taken = 50
} else {
	nearest.damage_taken = 1
}

visible = global.pathfinding_debug
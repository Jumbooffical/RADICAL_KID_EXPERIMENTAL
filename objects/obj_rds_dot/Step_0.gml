image_alpha -= 0.01
if image_alpha == 0 {
	instance_destroy(self)
}

var nearest = instance_nearest(x, y, obj_ranged_enemy)
if bonus_applied && place_meeting(x, y, obj_ranged_enemy) {
	nearest.dot_received += 1
	bonus_applied = false
}

if !place_meeting(x, y, obj_ranged_enemy) && !bonus_applied {
	nearest.dot_received -= 1
	bonus_applied = true
}
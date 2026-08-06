sprite_index = dot
image_alpha -= 0.02
if image_alpha <= 0 {
	instance_destroy(self)
}
green--
green = clamp(green, 0, 15)
if green > 1 {
sprite_index = green_dot
}

if green == 0 && head_applied {
instance_destroy()
}

//if instance_exists(obj_head) {
//	var nearest = instance_nearest(x, y, obj_head)
//	if bonus_applied && place_meeting(x, y, obj_head) {
//		nearest.dot_received += 1
//		bonus_applied = false
//		sprite_index = green_dot
//	}

//	if !place_meeting(x, y, obj_head) && !bonus_applied {
//		nearest.dot_received -= 1
//		bonus_applied = true
//		sprite_index = dot
//	}
//}


if instance_exists(obj_sniper_boss) {
	if bonus_applied && place_meeting(x, y, obj_sniper_boss) {
		obj_sniper_boss.dot_received += 1
		bonus_applied = false
	}

	if !place_meeting(x, y, obj_sniper_boss) && !bonus_applied {
		obj_sniper_boss.dot_received -= 1
		bonus_applied = true
	}
}
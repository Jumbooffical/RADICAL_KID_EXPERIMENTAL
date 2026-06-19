image_alpha -= 0.01
if image_alpha == 0 {
	instance_destroy(self)
}

if instance_exists(obj_head) {
	var nearest = instance_nearest(x, y, obj_head)
	if bonus_applied && place_meeting(x, y, obj_head) {
		nearest.dot_received += 1
		bonus_applied = false
	}

	if !place_meeting(x, y, obj_head) && !bonus_applied {
		nearest.dot_received -= 1
		bonus_applied = true
	}
}


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

if instance_exists(obj_helicopter) {
	var nearest = instance_nearest(x, y, obj_helicopter) 
	if place_meeting(x, y, obj_helicopter) {
		image_alpha -= 0.1
		image_xscale += 1
		image_yscale += 1
		
		if bonus_applied {
		nearest.dot_received += 1
		bonus_applied = false
		}
	}

	if !place_meeting(x, y, obj_helicopter) {
		
		if !bonus_applied {
		nearest.dot_received -= 1
		bonus_applied = true
		}
	}
}
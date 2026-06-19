function shanking() {
var no_click = !position_meeting(mouse_x, mouse_y, mech_mag) // Prevent action when clicking on the UI
melee_cd--;
if (mouse_check_button(mb_left)) && no_click {
	if (selected_item == melee_quickslot) && (melee_cd < 0) {
	
    var dir = point_direction(x, y, mouse_x, mouse_y);
	var mlID = meleeIndex
    
	if melee_cd < 0 {
	melee_cd = melee[mlID, MELEE.INTERVAL] / spd_mult
	
	var pull = 5
	
	stab = 70
	
	if mlID == ml.fist {
		stab = 0
		pull = -1
		
		if left {
		left_punch = 70
		left = false
		} else {
		right_punch = 70
		left = true
		}
	}
	
	var deg = 130
	swing = -deg
	if image_index == -1 {
	swing = deg
	}

	audio_play_sound(melee[mlID, MELEE.STRIKE_SFX], 2, 0, 1, 0, random_range(0.8, 1))
	
	with instance_create_depth(x, y, depth, obj_overpressure_bullet) {
		damage = other.melee[other.meleeIndex, MELEE.DAMAGE]
		stun = 35
		max_range = other.melee[other.meleeIndex, MELEE.RANGE] * 1.3
		direction = image_angle
		image_angle = dir
		visible = false
	}
	
	smooth_knockback_x += lengthdir_x(pull, dir)
	smooth_knockback_y += lengthdir_y(pull, dir)	
	}
}}}
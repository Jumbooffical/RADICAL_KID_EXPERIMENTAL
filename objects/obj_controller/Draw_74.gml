// Apply screen shader
if aiming_shd_str == 0 {
shader_state = shd_state.normal
}

if obj_player.is_aiming {
shader_state = shd_state.aiming
aiming_shd_str += 0.02

	if aiming_shd_str > 1 {
	aiming_shd_str = 1
	}
} else {
	if aiming_shd_str > 0 {
	aiming_shd_str -= 0.04
	}
}

if (obj_player.pain > 0) && !obj_player.is_reloading {
    shader_state = shd_state.hurt
	obj_player.pain -= 0.005 * obj_player.pain_decay
}

if global.ringing > 0 {
shader_state = shd_state.concussion
}

if obj_player.blind_str > 0 {
shader_state = shd_state.blinded
}

if glow > 0 {
	shader_state = shd_state.epic
}

if global.green_glow > 0 {
	shader_state = shd_state.green
}

switch (shader_state) {
	case (shd_state.normal):
	state_name = "none"
	break
	
	case (shd_state.aiming):
	state_name = "aiming"
	//aiming_shader()
	break
	
	case (shd_state.epic):
	state_name = "epic"
	if !obj_player.cursed {
	glow = glow_feedback(1.2, 0, 1.2, glow, 0.007)
	} else {
	glow = glow_feedback(1.5, 0, 0, glow, 0.003)
	}
	break	
	
	case (shd_state.blinded):
	state_name = "blinded"
	if !global.pathfinding_debug {
	oval_shader(0.7, 0.7, 0.7, obj_player.blind_str, shd_fog)
	}
	break
	
	case (shd_state.concussion):
	state_name = "concussion"
	blur_shader()
	break
	
	case (shd_state.hurt):
	state_name = "pain"
	oval_shader(255/155, 40/255, 40/255, obj_player.pain, shd_blood);
	break
	
	case (shd_state.green):
	global.green_glow = glow_feedback(0, 2, 0, global.green_glow, 0.005)
	break;
}
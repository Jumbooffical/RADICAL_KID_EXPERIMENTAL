with (obj_player) {
    name[0] = "damage: "
    desc[0] = string(stat.damage_output)

    name[1] = "ads speed : "
    desc[1] = string(stat.ads_speed)
	
	name[2] = "recoil : "
    desc[2] = string(stat.recoil)
	
	name[3] = "recoil control : "
    desc[3] = string(recoil_control)
	
	name[4] = "recoil penalty : "
    desc[4] = string(recoil_penalty)
	
	name[5] = "deviation : "
    desc[5] = string(stat.base_accuracy)
	
	name[6] = "action speed : "
    desc[6] = string(spd_mult)
	
    for (var i = 0; i < array_length(name); i++) {
        draw_text(other.x, other.y + (i * 25), name[i] + desc[i])
    }
}
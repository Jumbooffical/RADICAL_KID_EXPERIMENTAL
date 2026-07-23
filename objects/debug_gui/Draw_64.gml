if !global.dev_mode exit;
if !instance_exists(obj_camera) exit;

with (obj_player) {
	if !obj_player.open_inventory {
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
	
	name[5] = "reload mult : "
    desc[5] = string(reload_mult)
	
	name[6] = "deviation : "
    desc[6] = string(deviation)
	
	name[7] = "heat : "
    desc[7] = string(gun_heat)
	
	name[8] = ""
    desc[8] = ""
	
	name[9] = "mutation count : "
    desc[9] = string(array_length(applied_mutation))	
	
	name[10] = "all mutations : "
    desc[10] = string(array_length(obj_player.all_mutations))
	
	name[11] = ""
    desc[11] = ""
	
	name[12] = "level : "
    desc[12] = string(global.level)
	
	name[13] = "tier : "
    desc[13] = string(global.tier)
	
	name[14] = ""
    desc[14] = ""
	
	name[15] = "player speed : "
    desc[15] = string(my_spd)
	
	name[16] = "all level : "
	desc[16] = string(global.all_rooms)
	
    for (var i = 0; i < array_length(name); i++) {
        //draw_text(other.x, other.y + (i * 25), name[i] + desc[i])
		
		var w = 240;
		draw_text_ext_transformed(other.x, other.y + (i * 25), name[i] + desc[i],
		-1, w * 4, 1, 1, 0)
    }
	}
}
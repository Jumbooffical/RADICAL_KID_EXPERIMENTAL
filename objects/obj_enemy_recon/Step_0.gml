
// Inherit the parent event
if death {
	obj_player.debuff_wallhacked = false
	par_enemy.spotted = false
	par_enemy.recon_death_stun = true
}

event_inherited();

if !spotted exit;
if !death {
	global.wallhack_alpha = lerp(global.wallhack_alpha, 1, 0.02)
	if start_buff {
	obj_player.debuff_wallhacked = true
	par_enemy.stun_timer = 60
	start_buff = false
	}
	
	if have_titan_copter {
		var radius = 5000;
		var ang = random(360);

		var spawn_x = x + lengthdir_x(radius, ang);
		var spawn_y = y + lengthdir_y(radius, ang);
	
		with instance_create_depth(spawn_x, spawn_y, -110, obj_helicopter) {
			has_titan = true
		}
		have_titan_copter = false
	}
}
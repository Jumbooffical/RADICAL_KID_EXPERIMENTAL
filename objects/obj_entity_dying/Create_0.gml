kneel = false;
collapse = false;
timer = 600
maxhp = 0
lifesteal = false

global.combo_cd = global.max_combo_cd
global.combo++

if global.combo >= 3 {
global.bloodlust += 1
}

if global.combo >= 7 {
	lifesteal = true
	global.green_glow = 0.1
	global.healthbar_glow = 1
}

for (var i = 0; i < global.combo; i++) {
	obj_player.combo_textscale += 1 + i/2
}

drop_alarm = 30

str = 16
dir = point_direction(x, y, obj_player.x, obj_player.y);
smooth_knockback_x = lengthdir_x(str, dir)
smooth_knockback_y = lengthdir_y(str, dir)

depth = 90

kneel = false;
collapse = false;
timer = 600
maxhp = 0
lifesteal = false

drop_alarm = 30

str = 16
dir = point_direction(x, y, obj_player.x, obj_player.y);
smooth_knockback_x = lengthdir_x(str, dir)
smooth_knockback_y = lengthdir_y(str, dir)

depth = 90

minion = false

if minion exit;
global.combo_cd = global.max_combo_cd
global.combo++

if global.combo >= global.combo1_milestone {
global.bloodlust += 0.5
}

if global.combo >= global.combo2_milestone {
	lifesteal = true
	global.green_glow = 0.1
	global.healthbar_glow = 1
}

for (var i = 0; i < global.combo; i++) {
	obj_player.combo_textscale += 1 + i/2
}

reduce_nade_cd = true
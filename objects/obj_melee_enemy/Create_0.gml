ml_tier[0] = [ml.fist];
ml_tier[1] = [ml.knife, ml.crude_axe, ml.crude_spear, ml.the_delivery];

tier = 0;

var idx = irandom(array_length(ml_tier[tier]) - 1);
ewID =
ml_tier[tier][idx]	

name = obj_melee_enemy
idle_spr = spr_goon_idle_noarm
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running_noarm
death_spr = spr_goon_death

// Enemy stat
enemy_hp = 100;
armor_tier = 0

base_spd = 7;

base_aggro = 600

base_react_time = 15
alarm_interval = 10
event_inherited()
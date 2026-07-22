ewID = wp.pkm

name = obj_tank_boss
idle_spr = spr_tankboss_idle
walk_spr = spr_tankboss_walk_noarm
run_spr = spr_tankboss_running_noarm
death_spr = spr_tankboss_death

// Enemy stat
enemy_hp = 2500;
armor_tier = 0
base_spd = 4;

base_aggro = 900

base_react_time = 5
alarm_interval = 90

event_inherited()
mask_index = sprite_index

// Immunity
knockback_immune = true
ewID = wp.svd	
depth = 0

name = obj_sniper_boss
idle_spr = spr_goon_idle
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running_noarm
death_spr = spr_goon_death

reinforcement_interval = irandom_range(600, 900)

// Enemy stat
enemy_hp = 50;
base_spd = 1

base_aggro = 600
aggro_range = 600;

base_react_time = 15
reaction_time = 30

cooldown = 20
heat = 0

path_alarm = 11
path_finished = false;
event_inherited()

spawn_alarm = 180
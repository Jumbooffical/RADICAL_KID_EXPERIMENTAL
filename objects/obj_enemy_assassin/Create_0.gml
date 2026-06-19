ewID = 
ml.assassin_blade	

name = obj_enemy_assassin
idle_spr = spr_goon_idle_noarm
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running_noarm
death_spr = spr_goon_death

// Enemy stat
enemy_hp = 200;
armor_tier = 0

base_spd = 10;

base_aggro = 600

base_react_time = 15
alarm_interval = 25

is_rolling = false
will_dodge = false

roll_spd = 24
roll_dir = 0

smoke_attached = true
if smoke_attached {
blind_immune = true
}

event_inherited()
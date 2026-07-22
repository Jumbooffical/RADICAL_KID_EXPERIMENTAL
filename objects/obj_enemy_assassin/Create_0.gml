ewID = 
ml.assassin_blade	

name = obj_enemy_assassin
idle_spr = spr_goon_idle_noarm
walk_spr = spr_assassin_running
run_spr = spr_assassin_running
death_spr = spr_goon_death
roll_spr = spr_assassin_dodgeroll

// Enemy stat
enemy_hp = 150;
armor_tier = 0

base_spd = 10;

base_aggro = 900

base_react_time = 15
alarm_interval = 5

event_inherited()

smoke_attached = false

var t = global.tier
if rng < (5 * t) {
	smoke_attached = true
}
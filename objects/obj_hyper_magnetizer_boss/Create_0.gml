ewID = wp.uzi

name = obj_ranged_enemy
idle_spr = spr_goon_idle_noarm
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running_noarm
death_spr = spr_goon_death

// Enemy stat
enemy_hp = 2300;
armor_tier = 0
base_spd = 7;

base_aggro = 900

base_react_time = 5
alarm_interval = 30

event_inherited()
mask_index = sprite_index

// Immunity
blind_immune = true
knockback_immune = true
stun_immune = true

enum HMB_STATE {
IDLE,
ATTACK1,
ATTACK2,
ATTACK3,
ULT
}

my_state = HMB_STATE.IDLE
state_interval = 150
initial_deg = 0
cooldown2 = 0

lazer = false
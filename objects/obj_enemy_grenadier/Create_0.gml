event_inherited()
melee[999, MELEE.ARMED_SPR] = m62_enemy_armed
melee[999, MELEE.ARMED_SPR_BLOODY] = m62_enemy_armed
ewID = 999

randomize()

depth = 0
mask_index = body_hitbox

name = obj_enemy_grenadier
idle_spr = spr_goon_idle
walk_spr = spr_goon_walk
run_spr = spr_goon_running
death_spr = spr_goon_death

// Enemy stat
maxhp = 70 enemy_hp = maxhp
armor_tier = 0

base_spd = 6;
enemy_spd = base_spd;		// Movement speed

base_aggro = 900
aggro_range = base_aggro;

base_react_time = 15
reaction_time = 0

nade_ready = true
base_cooldown = 200
nade_cooldown = base_react_time

cooldown = 0
heat = 0

path_alarm = 33
alarm_interval = 30
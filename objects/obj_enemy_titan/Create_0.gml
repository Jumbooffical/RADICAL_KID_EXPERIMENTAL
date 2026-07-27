instance_create_depth(x, y, depth, obj_titan_magnetfield)

global.titan_pool = [wp.pkm, wp.aa12, wp.m249]
ewID = random_array(global.titan_pool)

name = obj_enemy_titan
idle_spr = spr_titan_idle
walk_spr = spr_titan_walking
run_spr = spr_titan_walking
death_spr = spr_titan_death

// Enemy stat
enemy_hp = 3000;
armor_tier = 0

base_spd = 0.5;

base_aggro = 700

base_react_time = 15
alarm_interval = 60

stamina = 100
recovery_rate = 0.3
drain_rate = 0.15
exhausted = false

speed_buff = false

img_spd = 0.3

step = false

event_inherited()
mask_index = giant_hitbox
my_state = STATE.IDLE

fall = 0
if my_state == STATE.FREEFALL {
fall = -1000
}
grav = 1.5;
zspd = -9;

state_delay = 90
is_deployed = true

stun_immune = true
head_immune = true
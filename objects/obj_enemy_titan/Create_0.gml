if instance_exists(obj_enemy_magnetizer) {
instance_create_depth(x, y, depth, obj_titan_magnetfield)
}

ewID = wp.pkm

name = obj_enemy_titan
idle_spr = spr_tankboss_idle
walk_spr = spr_tankboss_running_noarm
run_spr = spr_tankboss_running_noarm
death_spr = spr_tankboss_death

// Enemy stat
enemy_hp = 1500;
armor_tier = 0

base_spd = 1.5;

base_aggro = 900

base_react_time = 15
alarm_interval = 60

stamina = 100
recovery_rate = 0.5
drain_rate = 0.2
exhausted = false

speed_buff = false

img_spd = 0.3

step = false

event_inherited()
mask_index = sprite_index
my_state = STATE.IDLE

fall = 0
if my_state == STATE.FREEFALL {
fall = -1000
}
grav = 1.5;
zspd = -9;

state_delay = 60
is_deployed = true
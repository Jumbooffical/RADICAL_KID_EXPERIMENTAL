MeleeData()
randomize()
ewID = 1
//irandom(4)	
depth = 0
name = obj_ranged_enemy
idle_spr = spr_goon_idle
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running
death_spr = spr_goon_death

// Special
flashlight = false
blinding_flashlight = false

// Enemy stat
maxhp = 350 enemy_hp = maxhp
base_spd = 7;
enemy_spd = base_spd;		// Movement speed

base_aggro = 600
aggro_range = base_aggro;




reaction_time = 30
cooldown = 20
gore = 0

cell_size = 64;
global.grid = mp_grid_create(
    0, 0,
    room_width div cell_size,
    room_height div cell_size,
    cell_size,
    cell_size
);



path = path_add()
path_target = obj_player
path_alarm = 11
alarm_interval = 10
path_finished = false;

// State
my_state = STATE.IDLE
state_name = ""

set_retreatzone = true
justrun = false;	
attack = false;
reload = false;
retreat = false;
busy = false;
spotted = false;
last_seen_player = false
start_patrol = false
target = obj_player
react = false
death = false
raise = false

push_dir = point_direction(other.x, other.y, x, y);
to_me = point_direction(obj_player.x, obj_player.y, x, y);
to_wall = point_direction(par_indestructable.x, par_indestructable.y, x, y);

gun_dir = direction;

starting_dir = choose(0, 180)

flash_duration = 0

gun_frame = 0
gun_bob_time = 0;
gun_bob_amount = enemy_spd * 2;     // how strong the wave is
gun_bob_speed = enemy_spd * 0.1;    // how fast it waves

smooth_recoil_x = 0
smooth_recoil_y = 0

smooth_arm_inertia = 0;   // smooth interpolation

smooth_knockback_x = 0
smooth_knockback_y = 0

stab = 0

dot_received = 1
damage_taken = 0
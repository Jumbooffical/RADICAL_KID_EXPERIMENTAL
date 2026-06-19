WeaponData()
randomize()
ewID = 
irandom(4)	// Randomized loadout upon spawn

depth = 0
name = par_ranged_enemy
idle_spr = spr_goon_idle_noarm
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running_noarm
death_spr = spr_goon_death

// Special
flashlight = false
blinding_flashlight = true

// Enemy stat
enemy_hp = 100;
base_spd = 5;
enemy_spd = base_spd;		// Movement speed

base_aggro = 600
aggro_range = base_aggro;
attack_range = 900;

enemy_dmg = 20;		// Base attack damage
enemy_acc = weapon[ewID, GUN.DEVIATION]
bullet_type = par_enemybullet_SCAR

base_react_time = 15
mult_react_time = 1
reaction_time = 0

cooldown = 0
heat = 0

current_mag = weapon[ewID, GUN.MAG_SIZE]
reload_timer = 0
retreat_timer = 0
rng = 0

cell_size = 64;
grid = mp_grid_create(
    0, 0,
    room_width div cell_size,
    room_height div cell_size,
    cell_size,
    cell_size
);

mp_grid_add_instances(grid, par_pathwall, false);

path = path_add()
path_target = obj_player
path_alarm = 11
alarm_interval = 30
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

enum STATE {
IDLE,
ALERT,
ATTACK,
RETREAT,
HOLD,
PATROL,
BLINDED,
DEAD
}

gun_type = weapon[ewID, GUN.TYPE]
push_dir = point_direction(other.x, other.y, x, y);
to_me = point_direction(obj_player.x, obj_player.y, x, y);
to_wall = point_direction(par_indestructable.x, par_indestructable.y, x, y);

gun_dir = direction;
rng = irandom_range(0, 100)
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

prev_hp = 0

dot_received = 1
damage_taken = 0
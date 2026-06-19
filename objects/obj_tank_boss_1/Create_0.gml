event_inherited()
WeaponData()
randomize()
ewID = wp.pkm	

depth = 0
name = obj_tank_boss
idle_spr = spr_tankboss_idle
walk_spr = spr_tankboss_walk_noarm
run_spr = spr_tankboss_running_noarm
death_spr = spr_goon_death

// Enemy stat
enemy_hp = 500;
base_spd = 3;
enemy_spd = base_spd;		// Movement speed

base_aggro = 900
aggro_range = 1000;


enemy_acc = weapon[ewID, GUN.DEVIATION]
bullet_type = obj_deflective_enemybullet

base_react_time = 5
mult_react_time = 1
reaction_time = 0

cooldown = 20
heat = 0

current_mag = weapon[ewID, GUN.MAG_SIZE]
reload_timer = 0
retreat_timer = 0
rng = 0

path = path_add()
path_target = obj_player
path_alarm = 11
path_finished = false;

// State
my_state = STATE.IDLE
state_name = ""

set_retreatzone = true
justrun = false;	// Variable
attack = false;		// Start attacking animation
reload = false;
retreat = false;
busy = false;
spotted = false;
last_seen_player = false
start_patrol = false
target = obj_player
react = false
death = false

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

dot_received = 1
damage_taken = 0
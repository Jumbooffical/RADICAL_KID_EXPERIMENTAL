randomize()
WeaponData()
MeleeData()

apply_buff = true
// Special
flashlight = false

blinding_flashlight = false
martyr_airstrike = false

overclocked = false
magnet_imbued = false
heli_mounted = false
can_teleport = false

// Immunity
head_immune = false
blind_immune = false
knockback_immune = false
stun_immune = false

maxhp = enemy_hp

turning_spd = 0
enemy_acc = weapon[ewID, GUN.DEVIATION]
bullet_type = par_enemybullet_SCAR

damage = 0;
firerate = 0

current_mag = weapon[ewID, GUN.MAG_SIZE]
reload_timer = 0
loop = 0
retreat_timer = 0
prev_hp = 0

aggro_range = base_aggro;
enemy_spd = base_spd;

start = false
path = path_add()
path_alarm = 11
path_target = obj_player
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
start_teleport = false
target = obj_player
react = false
death = false
hurt = 0
raise = false
sniper_minion = false

enum STATE {
IDLE,
ALERT,
ATTACK,
RETREAT,

HOLD,
PATROL,
BLINDED,

DODGE,
EXERTED,
TELEPORT,
FREEFALL,

DEAD
}

gun_type = weapon[ewID, GUN.TYPE]
push_dir = point_direction(other.x, other.y, x, y);
to_me = point_direction(obj_player.x, obj_player.y, x, y);
to_wall = point_direction(par_indestructable.x, par_indestructable.y, x, y);

gun_dir = direction;

starting_dir = choose(0, 180)

flash_duration = 0

gun_x = 0
gun_y = 0

gun_scale = 1
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

base_phase_timer = 150
phasing_timer = base_phase_timer
arrived = false

depth = 0
mask_index = body_hitbox

reaction_time = 0
cooldown = 0

recon_death_stun = false
stun_timer = 0

heat = 0

left_punch = 0
right_punch = 0
left = false

is_rolling = false
will_dodge = false

gun_dir = 0
dir = 0

roll_spd = 0
roll_dir = 0

spin = 0
stab = 0
swing = 0
gore = 0

hands_count = 0
attack_style = 0

attack_range = 0

bolt_cycle = true
reset_frame = true

// Shaders
_uniUV         = shader_get_uniform(shd_titan_overclocked, "u_uv");
_uniTime       = shader_get_uniform(shd_titan_overclocked, "u_time");
_uniSpeed      = shader_get_uniform(shd_titan_overclocked, "u_speed");
_uniSection    = shader_get_uniform(shd_titan_overclocked, "u_section");
_uniSaturation = shader_get_uniform(shd_titan_overclocked, "u_saturation"); 
_uniBrightness = shader_get_uniform(shd_titan_overclocked, "u_brightness");
_uniMix        = shader_get_uniform(shd_titan_overclocked, "u_mix");

_time  = 0;
_speed = 1.0;
_section = 0.5;
_saturation = 1;
_brightness = 1.5;
_mix = 0.5;

snd_death = true

painbar = 150
hpbar_w = 0
hpbar_h = 0
hpbar_x = 0
hpbar_y = 0;

head_alarm = 30
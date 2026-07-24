#macro live_enabled 0
loot_pool()
global.level = 1
global.tier = 0

// DEBUG
global.pathfinding_debug = false
global.dev_mode = true

randomize()

global.easy_rooms = [EasyRoom, EasyRoom2, EasyRoom3, EasyRoom4, EasyRoom5, EasyRoom6]
global.hard_rooms = [HardRoom, HardRoom2, HardRoom3]
global.boss_rooms = [TankBossRoom, SniperBossRoomDay, HMBossRoom]

global.easy_rooms = array_shuffle(global.easy_rooms)
global.boss_rooms = array_shuffle(global.boss_rooms)
global.all_rooms = []

global.easy_room_amount = 3

for (var i = 0; i < global.easy_room_amount; i++) {
	array_push(global.all_rooms, global.easy_rooms[i])
}

for (var i = 0; i < 3; i++) {
	array_push(global.all_rooms, global.hard_rooms[i])
	array_push(global.all_rooms, global.boss_rooms[i])
}

if (!variable_global_exists("ewID")) {
    randomize();
    global.ewID = irandom(1);
}

cell_size = 98;
global.grid = mp_grid_create(
    0, 0,
    room_width div cell_size,
    room_height div cell_size,
    cell_size,
    cell_size
);
mp_grid_add_instances(global.grid, par_pathwall, false);

global.grid_dirty = false
global.player_inside_grid = false


// Humanoid shadow
//global.grayness = 15
//global.shadow_x = 40
//global.shadow_y = 40
//global.all_offset = 5
//global.shadow_xscale = -0.4
//global.shadow_yscale = 1.1
//global.shadow_angle = -90
//global.shadow_alpha = 0.2

global.grayness = 15
global.shadow_x = 10
global.shadow_y = 30
global.all_offset = 0
global.shadow_xscale = -1.3
global.shadow_yscale = -0.6
global.shadow_angle = 180
global.shadow_alpha = 0.25

global.wallhack_alpha = 0

// Tinnitus
global.radius = 150
global.ringing = 0;
global.explo_gain = 11;
glow = 0

enum shd_state {
normal,
blinded,
epic,
aiming,
concussion,
hurt,
green
}

shader_state = shd_state.normal
state_name = ""

aiming_shd_str = 0

audio_group_load(audiogroup_tinnitus_exclude)

global.boss_vanquished_snd = [snd_boss_vanquished, snd_boss_vanquished2, snd_boss_vanquished3]
global.deflect_snd = [snd_deflecting1, snd_deflecting2, snd_deflecting3]
global.deflect_snd_gain = 3
global.firework_snd = [snd_firework1, snd_firework2, snd_firework3]
global.shield_impact_snd = [snd_shield_impact, snd_shield_impact2, snd_shield_impact3]

global.enemy_glow = 0
hide_shader = false
global.green_glow = 0

global.earthquake = 0
zspd = 0; 
grav = 0.5;

// Gay Shaders
global._uniUV         = shader_get_uniform(shd_rainbow, "u_uv");
global._uniTime       = shader_get_uniform(shd_rainbow, "u_time");
global._uniSpeed      = shader_get_uniform(shd_rainbow, "u_speed");
global._uniSection    = shader_get_uniform(shd_rainbow, "u_section");
global._uniSaturation = shader_get_uniform(shd_rainbow, "u_saturation"); 
global._uniBrightness = shader_get_uniform(shd_rainbow, "u_brightness");
global._uniMix        = shader_get_uniform(shd_rainbow, "u_mix");

global._time  = 0;
global._speed = 0.3;
global._section = 0.5;
global._saturation = 0.7;
global._brightness = 0.8;
global._mix = 0.5;

global.sniper_revive = 2
global.sniper_room = [SniperBossVanquished, SniperBossRoomNight, SniperBossRoomSunset, SniperBossRoomDay]
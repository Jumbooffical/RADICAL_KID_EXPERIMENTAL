randomize()
rad = 0
rng_x = random_range(-rad, rad);
rng_y = random_range(-rad, rad);

spawn = false
spawn_alarm = 15

enum SPAWN_GROUP {
	STANDARD,
	BREACHER,
	ASSAULT,
	SNIPER,
	ANGRY_MOB,
}

group = 0
if rng < 5 {
group = SPAWN_GROUP.ANGRY_MOB
} else if rng < 25 {
group = choose(1, 2, 3)
} else {
group = 0
}

global.all_wp_pool = [
wp.scar, wp.fal, wp.ss2, wp.ak,
wp.uzi, wp.mp5,
wp.sawnoff, wp.deagle, wp.m1911, wp.model19,
wp.r700, wp.svd,
wp.m870
];

global.ar_pool = [wp.scar, wp.fal, wp.ss2, wp.ak]
global.smg_pool = [wp.uzi, wp.mp5]
global.pistol_pool = [wp.sawnoff, wp.m1911, wp.model19]
global.sniper_pool = [wp.r700, wp.svd]
global.shotgun_pool = [wp.m870]

#macro all_gun global.all_wp_pool[irandom(array_length(global.all_wp_pool) - 1)]
#macro all_ar global.ar_pool[irandom(array_length(global.ar_pool) - 1)]
#macro all_smg global.smg_pool[irandom(array_length(global.smg_pool) - 1)]
#macro all_pistol global.pistol_pool[irandom(array_length(global.pistol_pool) - 1)]
#macro all_sniper global.sniper_pool[irandom(array_length(global.sniper_pool) - 1)]
#macro all_shotgun global.shotgun_pool[irandom(array_length(global.shotgun_pool) - 1)]

universal_enemies = []
unique_enemies = []
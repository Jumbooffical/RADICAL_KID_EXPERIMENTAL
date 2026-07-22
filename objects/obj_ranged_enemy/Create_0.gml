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
	
global.sniper_boss_pool = [wp.scar, wp.fal, wp.ss2, wp.ak, wp.uzi, wp.deagle]

ewID = 
random_array(global.all_wp_pool)
//wp_tier[tier][idx]

name = obj_ranged_enemy
idle_spr = spr_goon_idle_noarm
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running_noarm
death_spr = spr_goon_death

// Enemy stat
enemy_hp = 70;
armor_tier = 0

base_spd = 5;

base_aggro = 700

base_react_time = 15
alarm_interval = 30
event_inherited()

switch (gun_type) {
	case WeaponType.AR:
		base_spd = 6;
	break;
			
	case WeaponType.Pistol:
		base_spd = 7;
	break;
			
	case WeaponType.LMG:
		base_spd = 5;
	break;
			
	case WeaponType.SMG:
		base_spd = 7;
	break;
			
	case WeaponType.Shotgun:
		base_spd = 6;
	break;
}

var t = global.tier
if rng < (5 * t) {
	blinding_flashlight = true
}
	
if rng < (1 * t) {
	martyr_airstrike = true
}
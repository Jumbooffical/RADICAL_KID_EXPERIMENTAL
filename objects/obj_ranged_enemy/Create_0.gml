global.all_wp_pool = [
			wp.scar, wp.fal, wp.ss2, wp.ak,
			wp.uzi,
			wp.sawnoff, wp.deagle, wp.m1911, wp.model19,
			wp.r700, wp.svd,
			wp.m870
			];
global.ar_pool = [wp.scar, wp.fal, wp.ss2, wp.ak]			
	
global.sniper_boss_pool = [wp.scar, wp.fal, wp.ss2, wp.ak, wp.uzi, wp.deagle]	
wp_tier[0] = []
tier = 0;

var idx = irandom(array_length(wp_tier[tier]) - 1);
ewID = 
global.all_wp_pool[irandom(array_length(global.all_wp_pool) - 1)]
//wp_tier[tier][idx]

name = obj_ranged_enemy
idle_spr = spr_goon_idle_noarm
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running_noarm
death_spr = spr_goon_death

// Enemy stat
enemy_hp = 100;
armor_tier = 0

base_spd = 5;

base_aggro = 700

base_react_time = 15
alarm_interval = 60
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
		base_spd = 7;
	break;
}
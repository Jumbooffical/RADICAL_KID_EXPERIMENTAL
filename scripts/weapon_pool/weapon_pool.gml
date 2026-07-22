function weapon_pool() {
	global.gun_mod_pool = [
		new item(obj_item_rds, RARITY.COMMON),
		new item(obj_item_acog, RARITY.UNCOMMON),
		new item(obj_item_pm2, RARITY.RARE),
	
		new item(obj_item_vertical_grip, RARITY.COMMON),
		new item(obj_item_skeletal_grip, RARITY.UNCOMMON),
		new item(obj_item_chainsaw_grip, RARITY.UNCOMMON),
		new item(obj_item_grip_w_flashlight, RARITY.RARE),
	
		new item(obj_item_suppressor, RARITY.COMMON),
		new item(obj_item_kunai_launcher, RARITY.UNCOMMON),
		new item(obj_item_burst_amplifier, RARITY.RARE),
	
		new item(obj_item_blue_laser, RARITY.COMMON),
		new item(obj_item_knife_mount, RARITY.COMMON),
		new item(obj_item_shuriken_printer, RARITY.UNCOMMON),
		new item(obj_item_nade_launcher, RARITY.RARE)
	];


	global.weapon_pool = [
		new item(obj_item_uzi, RARITY.COMMON),
		new item(obj_item_mp5, RARITY.COMMON),
		new item(obj_item_r700, RARITY.COMMON),			
		new item(obj_item_AKM_scrap, RARITY.COMMON),

		new item(obj_item_AK, RARITY.UNCOMMON),
		new item(obj_item_m870, RARITY.UNCOMMON),
		new item(obj_item_scar, RARITY.UNCOMMON),
		new item(obj_item_ss2, RARITY.UNCOMMON),
	
		new item(obj_item_SVD, RARITY.RARE),
		new item(obj_item_deagle, RARITY.RARE),
		new item(obj_item_fal, RARITY.RARE),
		new item(obj_item_aa12, RARITY.RARE),
		new item(obj_item_Sawn_odd, RARITY.RARE),	
	]

	global.ammo_pool = [
		new item(obj_ammoLight, RARITY.COMMON),
		new item(obj_ammoMed, RARITY.COMMON),
		new item(obj_ammoHeavy, RARITY.UNCOMMON),
		new item(obj_ammoShell, RARITY.UNCOMMON),
		new item(obj_ammoLong, RARITY.UNCOMMON),
	]
		
	global.medical_pool = [
		new item(obj_item_medkit, RARITY.COMMON),
		
		new item(obj_item_antibiotic, RARITY.UNCOMMON),
		new item(obj_item_stim_CLAR, RARITY.UNCOMMON),
		new item(obj_item_stim_MEND, RARITY.UNCOMMON),
		new item(obj_item_stim_NOON, RARITY.UNCOMMON),
		new item(obj_item_stim_ZERK, RARITY.UNCOMMON),
		new item(obj_item_stim_DRUM, RARITY.UNCOMMON),
		new item(obj_item_stim_UNDY, RARITY.UNCOMMON),
		new item(obj_item_stim_TAPE, RARITY.UNCOMMON),
		new item(obj_item_stim_EPIK, RARITY.UNCOMMON),
		new item(obj_item_unstable_mutagen, RARITY.UNCOMMON),
		
		new item(obj_item_stable_mutagen, RARITY.RARE),
		new item(obj_item_experimental_mutagen, RARITY.RARE),
		new item(obj_item_forbidden_mutagen, RARITY.RARE),
	]
}
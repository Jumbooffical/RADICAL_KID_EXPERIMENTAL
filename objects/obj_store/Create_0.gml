image_alpha = 0.3
start = true

enum SHOP {
	MOD,
	WEAPON
}

store_type = SHOP.WEAPON
markup = 1

common_item = 0
uncommon_item = 0
rare_item = 0

common_amt = irandom_range(3, 4)
uncommon_amt = irandom_range(2, 3)
rare_amt = irandom_range(0, 2)

global.gun_mod_pool = [
	new item(obj_item_rds, RARITY.COMMON),
	new item(obj_item_acog, RARITY.UNCOMMON),
	new item(obj_item_pm2, RARITY.RARE),
	
	new item(obj_item_vertical_grip, RARITY.COMMON),
	new item(obj_item_chainsaw_grip, RARITY.UNCOMMON),
	new item(obj_item_grip_w_flashlight, RARITY.RARE),
	
	new item(obj_item_suppressor, RARITY.COMMON),
	new item(obj_item_kunai_launcher, RARITY.UNCOMMON),
	new item(obj_item_burst_amplifier, RARITY.RARE),
	
	new item(obj_item_blue_laser, RARITY.COMMON),
	new item(obj_item_shuriken_printer, RARITY.UNCOMMON),
	new item(obj_item_nade_launcher, RARITY.RARE)
];


global.weapon_pool = [
	new item(obj_item_uzi, RARITY.COMMON),
	new item(obj_item_mp5, RARITY.COMMON),
	new item(obj_item_r700, RARITY.COMMON),	

	new item(obj_item_AK, RARITY.UNCOMMON),
	new item(obj_item_m870, RARITY.UNCOMMON),
	new item(obj_item_scar, RARITY.UNCOMMON),
	new item(obj_item_ss2, RARITY.UNCOMMON),
	
	new item(obj_item_SVD, RARITY.RARE),
	new item(obj_item_deagle, RARITY.RARE),
	new item(obj_item_fal, RARITY.RARE),
	new item(obj_item_Sawn_odd, RARITY.RARE),
]

global.ammo_pool = [
	new item(obj_ammoLight, RARITY.COMMON),
	new item(obj_ammoMed, RARITY.COMMON),
	new item(obj_ammoHeavy, RARITY.COMMON),
	new item(obj_ammoShell, RARITY.COMMON),
	new item(obj_ammoLong, RARITY.COMMON),
]
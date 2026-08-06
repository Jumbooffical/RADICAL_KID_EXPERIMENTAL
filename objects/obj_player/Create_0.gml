easymode = false
hardmode = false
instance_create_depth(x, y, depth, obj_camera)
WeaponData() 
MeleeData()
GrenadeData()

// Stats
spd_mult = 1
my_spd = 9;
current_spd = my_spd;
step_dist = 0

// Status
immobilize_timer = 0
MEND_stim_timer = 0
ZERK_stim_timer = 0
NOON_stim_timer = 0
UNDY_stim_timer = 0
beat_interval = 1

CLAR_stim_count = 0
EPIK_stim_count = 0
DRUM_stim_count = 0
HEX_stim_count = 0

extra_maxhp = 0
maxhp = 1000;
hp = maxhp
heal_mult = 1
prev_hp = 0
pain = 0
pain_decay = 1

debuff_wallhacked = false
global.combo = 0
global.combo1_milestone = 3
global.combo2_milestone = 7
global.combo_cd = 0
global.max_combo_cd = 300
global.bloodlust = 1
combo_textscale = 2

death = false
sound_proc = true

blind_str = 0
is_blind = false

// State
enum state {
idle,
moving,
rolling,
walking,
walking_backward,
lost_balance,
death
}

cash = 0
cash_text = 0
cash_textscale = 2

text_shake_alarm = 0
text_shake = 0

my_state = state.idle
state_name = ""
player_armed = false;
busy = false;

is_moving = false;
is_rolling = false;

is_reloading = false;
select_mag = false;
did_select_mag = false;

is_shooting = false;
is_ejecting = false;
is_aiming = false;
is_falling = false

open_inventory = false;
is_moving_backward = false;

// Define rolling
rolling_timer = 0;
roll_spd = 12;

// Ammo reserve
current_magazine[Caliber.Medium] = 0	// Medium
current_magazine[Caliber.Light] = 0		// Light
current_magazine[Caliber.Heavy] = 0		// Heavy
current_magazine[Caliber.Long] = 0		// Long
current_magazine[Caliber.Shell]	= 0		// Shell

// inventory Selection
selected_item = 1;
last_slot = selected_item;
max_quickslot = 10
extra_quickslot_amount = 4;

melee_quickslot = -1
nade_quickslot = extra_quickslot_amount

enum Slot {
Gun,
Melee,
Nade
}
quickslot_type = Slot.Gun;

magslot = 3
max_pocket = 2

#region Quick Slot
enum QSlot {
Gun,
LoadedAmmo,
Melee,
Nade,
Mag,
Heat,
Cycle,

//Buff
Buff_Taped,
Buff_Overclocked,
Buff_Smart,
Buff_HeatSeek,
Buff_Power,

//Debuff
Debuff_AirMag,
Debuff_Void,

//Attachments
Optic,
Mount,
Grip,
Barrel
}

for (var i = 0; i < max_quickslot + 1; i++) {
    quickslot[i, QSlot.Gun] = noone;
    quickslot[i, QSlot.LoadedAmmo] = 0;
    quickslot[i, QSlot.Melee] = ml.fist;
    quickslot[i, QSlot.Nade] = noone;
    quickslot[i, QSlot.Mag] = spr_mag;
    quickslot[i, QSlot.Heat] = 0;

    quickslot[i, QSlot.Buff_Taped] = 0;
    quickslot[i, QSlot.Buff_Overclocked] = 0;
    quickslot[i, QSlot.Buff_Smart] = 0;
    quickslot[i, QSlot.Buff_HeatSeek] = 0;
	quickslot[i, QSlot.Buff_Power] = 0;

    quickslot[i, QSlot.Debuff_AirMag] = 0;
	quickslot[i, QSlot.Debuff_Void] = 0;

    quickslot[i, QSlot.Optic] = 0;
    quickslot[i, QSlot.Mount] = 0;
    quickslot[i, QSlot.Grip] = 0;
    quickslot[i, QSlot.Barrel] = 0;
}

meleeIndex = 0;
nadeIndex = noone;
#endregion

allow_optic = false
allow_mount = false
allow_grip = false
allow_barrel = false

//gun_inst = instance_create_layer(x, y, "Instances", weapon[wp.scar, GUN.OBJECT]);
//gun_inst.owner = id;
//gun_inst.persistent = true;

pickup_target = noone;
full_auto = false

// Alarm
sound_alarm = 0

// Set hp bar scale and coordinate
hpbar_w = 400;
painbar = 400
hpbar_h = 130;
hpbar_x = (1000) - (hpbar_w/2);
hpbar_y = 770;
global.healthbar_glow = 0

// Reload bar ui
rlbar_w = 18;
rlbar_h = 240;
rlbar_x = 767
rlbar_y = 288
gui_frame = 0

status_x = 1330

// Actual stats
wID = 0
weapon_grab_distance = 75;

base_damage = weapon[wID, GUN.DAMAGE]
aiming_damage_mult = 1

	stat = {
		damage_output : 0,
		ads_speed : 0,
		recoil : 0,
		base_accuracy : 0,
	}
	
	base = {
		maxhp : 1000,
		heal_mult : 1,
		roll_cd : 30,
		react_mult: 1,
		
		reload_mult : 1,
		recoil_penalty : 1,
		deviation : 1,
		magsize_mult : 1
	}
							
	player_stat = {
		damage_taken : 1
	}

cooldown = 0
firerate = 0
quickslot[selected_item, QSlot.Heat] = 0

recoil_penalty = 1
recoil_control = 1
recoil = 1

min_deviation = 1.5
gun_heat = quickslot[selected_item, QSlot.Heat]
heat_penalty = 1.7
heat_mult = 1
noise = 1
gun_pitch = 1
gun_gain = 1

current_accuracy = 0
inaccuracy = 0;
deviation = 1

base_zoom = 0.25
magnify = 1

mult_react_time = 1

mag_size = weapon[wID, GUN.MAG_SIZE]
printed_ammo = 0
have_belt_printer = false

bullet_type = par_bullet_SCAR
gun_type = weapon[wID, GUN.TYPE]

max_ricochet = 0
ricochet_accuracy = 30

caliber_type = weapon[wID, GUN.CALIBER_ID]

stat.ads_speed = weapon[wID, GUN.CAM_TO_RETICLE_SPD]

have_laser = false
have_flashlight = false
have_suppressor = false

done_selection = false
done_storing = false
free_mag = false
is_overclocked = false
overclock_cd = 0

burst_fired = 0
start_shooting = false
burst_failure = false

// Auxiliary
kunai = 0
shuriken = 0
nade_launcher_cd = 60

// Set initial interval
reload_timer = 0;
reload_mult = 1
max_reload = 0
taped_reload = false

melee_cd = 0
roll_cd = 0
flash_duration = 0
bolt_cycle = false

// Get direction
mouse_dir = point_direction(x, y, mouse_x, mouse_y);
mouse_dist = point_distance(x, y, mouse_x, mouse_y);

// Manual animation
gun_x = 0
gun_y = 0

gun_frame = 0;
gun_frame_speed = 2;
aiming_offsety = 0
aiming_offsetx = 15
player_offset = 12

animate_recoil = weapon[wID, GUN.RECOIL]
animate_arm_inertia = 0

smooth_recoil_x = 0
smooth_recoil_y = 0
pistol_recoil_angle = 0

smooth_knockback_x = 0
smooth_knockback_y = 0

gun_bob_time = 0;
gun_bob_amount = current_spd * 2;
gun_bob_speed = current_spd * 0.1;

bob_spd = 0
bob_time = 0
bob_lerp = 0
smooth_arm_inertia = 0;

left_punch = 0
right_punch = 0
left = false

spin = 0
stab = 0
swing = 0
gore = 0

idle_spr = spr_player_idle
run_spr = spr_player_running
death_spr = spr_player_dying

name = ""
desc = ""

global.afterimg_timer = 0
global.afterimg_frequency = 3;

attack_style = melee[meleeIndex, MELEE.STYLE]

if (instance_number(obj_player) > 1) {
	instance_destroy();
}

ewID = 0 // Prevent crash for enemy bullet when last enemy dies

// DEBUG
death_count = 0
time_elapsed = 0
gamemode = ""

enum RARITY {
    COMMON,
    UNCOMMON,
    RARE,
    EPIC,
	CURSED
}

enum MAG_CALIBER {
	UNIVERSAL,
	AR,
	SMG
}

global.allmags = [
    new magazine(spr_mag, 
	MAG_CALIBER.UNIVERSAL, RARITY.COMMON),
    new magazine(spr_overpressure, 
	MAG_CALIBER.UNIVERSAL, RARITY.COMMON),
    new magazine(spr_marksman_mag, 
	MAG_CALIBER.UNIVERSAL, RARITY.COMMON),
	new magazine(spr_rubber_jacket, 
	MAG_CALIBER.UNIVERSAL, RARITY.COMMON),
	
    new magazine(spr_taped2, 
	MAG_CALIBER.UNIVERSAL, RARITY.UNCOMMON),
	new magazine(spr_extmag, 
	MAG_CALIBER.UNIVERSAL, RARITY.UNCOMMON),
	//new magazine(spr_corrosive_mag, 
	//MAG_CALIBER.UNIVERSAL, RARITY.UNCOMMON),
	new magazine(spr_belt_printermag, 
	MAG_CALIBER.UNIVERSAL, RARITY.UNCOMMON),
    new magazine(spr_rngmag, 
	MAG_CALIBER.UNIVERSAL, RARITY.UNCOMMON),
	
    new magazine(spr_drummag, 
	MAG_CALIBER.UNIVERSAL, RARITY.RARE),
    new magazine(spr_deflectivemag, 
	MAG_CALIBER.UNIVERSAL, RARITY.RARE),
    new magazine(spr_incendiarymag, 
	MAG_CALIBER.UNIVERSAL, RARITY.RARE),
	new magazine(spr_flash_shieldmag, 
	MAG_CALIBER.UNIVERSAL, RARITY.RARE),
	
	new magazine(spr_overlockmag, 
	MAG_CALIBER.UNIVERSAL, RARITY.EPIC),
	new magazine(spr_smartmag, 
	MAG_CALIBER.UNIVERSAL, RARITY.EPIC),
	new magazine(spr_heatseekmag, 
	MAG_CALIBER.UNIVERSAL, RARITY.EPIC),
	new magazine(spr_voidmag, 
	MAG_CALIBER.UNIVERSAL, RARITY.EPIC),
	new magazine(spr_wishingmag, 
	MAG_CALIBER.UNIVERSAL, RARITY.EPIC),
	//new magazine(spr_powermag,
	//MAG_CALIBER.UNIVERSAL, RARITY.EPIC),
];

global.cursedmags = [
	new magazine(spr_glass_bullet, 
	MAG_CALIBER.UNIVERSAL, RARITY.CURSED),
	new magazine(spr_air_mag, 
	MAG_CALIBER.UNIVERSAL, RARITY.CURSED),
	new magazine(spr_stasis_mag, 
	MAG_CALIBER.UNIVERSAL, RARITY.CURSED),
	new magazine(spr_trackless_mag, 
	MAG_CALIBER.UNIVERSAL, RARITY.CURSED),
	new magazine(spr_blackjack_mag, 
	MAG_CALIBER.UNIVERSAL, RARITY.CURSED),
];

uncommon_chance = 30
rare_chance = 12
epic_chance = 3
curse_chance = 1

cursed = false
curse_reload_penalty = 300
curse_alarm = 0

// Hardcode :(
hardcode_airmag = 0

#region // Controls
key_pause = vk_escape

key_up = ord("W")
key_down = ord("S")
key_left = ord("A")
key_right = ord("D")
key_rolling = vk_space

key_aim = mb_right
key_firing_mode = ord("C")
key_reloading = ord("R")

key_slot1 = ord("1")
key_slot2 = ord("2")
key_slot3 = ord("3")
key_slot4 = ord("4")

key_pickup = ord("F")
key_drop = ord("X")
key_inventory = vk_tab
key_gun_to_inv = ord("F")

// Input behavior
hold_pressed = 0
input_R_pressed = 0
mouse_input = mouse_check_button_pressed(mb_left)

rmb_hold_mag = 0
is_dragging = false

slot_input_delay = 0
#endregion

#region MUTATIONS
	all_mutations = [
		new mutation("Magic Pistol", 
		"Model19 revolver always shoot smart bullet & +50% damage", U_RARITY.COMMON),	
	
		new mutation("Fast Footed", 
		"Movement Speed +15%", U_RARITY.RARE),
		
		new mutation("Trained Lung", 
		"Dodgeroll cooldown -50%", U_RARITY.RARE),
		
		new mutation("Bloodthirsty", 
		"-1 first combo milestone, Movement Speed -15%", U_RARITY.RARE),
		
		new mutation("Modified Veins", 
		"Combo last 1 extra second", U_RARITY.RARE),
		
		new mutation("Tough", 
		"+200 Max HP", U_RARITY.COMMON),
		
		new mutation("Quickhand", 
		"-25% Reload Speed", U_RARITY.COMMON),
		
		new mutation("Lucky", 
		"x1.1 Magazine Rarity", U_RARITY.COMMON),
		
		new mutation("Warm Blooded", 
		"+25% Heat", U_RARITY.DEFECT),	

		new mutation("Short Sighted", 
		"Reduce vision -10%", U_RARITY.MAJOR_DEFECT),
		
		new mutation("Fragile", 
		"-250 Max HP", U_RARITY.DEFECT),
		
		new mutation("Extra finger", 
		"Do nothing", U_RARITY.DEFECT),
		
		new mutation("Noodle Arms", 
		"+20% recoil & deviation", U_RARITY.MAJOR_DEFECT),
		
		new mutation("Clumsy", 
		"+20% Reload Speed, +50% cursed chance", U_RARITY.MAJOR_DEFECT),
		
		new mutation("Lightweight", 
		"-350 Max HP, +15% Movement Speed", U_RARITY.MAJOR_DEFECT),
		
		new mutation("Cancer!", 
		"Unfortunately it's terminal!", U_RARITY.MAJOR_DEFECT),
		
		new mutation("Low blood pressure", 
		"Combo last 1.5 second less", U_RARITY.DEFECT),
		
		new mutation("Conspicuous",
		"Enemy have quicker reaction time", U_RARITY.MAJOR_DEFECT), 
	]
	applied_mutation = []
	
	mutation_system()
#endregion

#region ENEMY MUTATIONS
	all_enemy_mutations = [
		new mutation("Deadly AR", 
		"AR enemy deal +33% damage", U_RARITY.COMMON),
	
		new mutation("Deadly SMG", 
		"SMG enemy deal +50% damage", U_RARITY.COMMON),
		
		new mutation("Deadly Pistol", 
		"Pistol enemy deal +100% damage", U_RARITY.COMMON),
		
		new mutation("Deadly Sniper", 
		"Bolt & DMR enemy deal +75% damage", U_RARITY.COMMON),
		
		new mutation("Deadly Shotgun", 
		"Shotgunner deal +33% damage", U_RARITY.COMMON),
	]
	applied_enemy_mutation = []
	
	enemy_mutation_system()
#endregion
save_alarm = 0
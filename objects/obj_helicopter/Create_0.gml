randomize()
hull_hp = 100

velocity = 5
timer = 120
scale = 1

path = path_add()
path_alarm = 11

retreat_zone = 350
retreat_alarm = 0
stop_zone = 1800
deploy_zone = 200

steering_spd = 0
base_wing_spd = 0
wing_spd = 0
orbit_spd = 0.4;
orbit_radius = 900;
orbit_angle = irandom(359);

attack_interval = 300

enum HELI_STATE {
	STOP,
	CHASE,
	AVOID,
	RETREAT,
	ATTACK,
	
	ORBIT,
	DEPLOYING
}

mystate = HELI_STATE.ORBIT
state_name = ""

//Special
has_sniper = false
has_titan = false
start_attacking = false

var t = global.tier
if t > 0 {
	if rng < 25 + (t * 5) {
	//has_sniper = true
	} else if rng < 10 + (t * 2.5) {
	has_titan = true
	}
}

if has_sniper {
	mystate = HELI_STATE.ORBIT
	with instance_create_depth(x, y, depth, obj_ranged_enemy) {
		ewID = wp.r700
		heli_mounted = true
		current_mag = 0
	}
}
vulnerable = 0
flash_alarm = 2
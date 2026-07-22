
var mi = obj_player

steering_spd = 0.007
reset_alarm--

if mystate == HELI_STATE.RETREAT {
var in = 0.001
image_alpha -= in
image_xscale -= in
image_yscale -= in

	if image_alpha <= 0 {
		instance_destroy()
	}
} else {
image_alpha = 0.5
image_xscale = scale
image_yscale = scale
}

var dir = point_direction(obj_player.x, obj_player.y, x, y); 

if !start_attacking {
if collision_circle(x, y, stop_zone, mi, false, true) {
	if distance_to_object(mi) < retreat_zone && retreat_alarm < 0 {
	mystate = HELI_STATE.AVOID
	} else {
	mystate = HELI_STATE.STOP	
	}
} else {
	mystate = HELI_STATE.CHASE
}} else {
	mystate = HELI_STATE.ATTACK
}

if has_sniper {
	mystate = HELI_STATE.ORBIT
}

if has_titan {
	mystate = HELI_STATE.DEPLOYING
}

if hull_hp <= 0 {
	mystate = HELI_STATE.RETREAT
	part_particles_create(global.sys_black_smoke, 
	x, y, global.pt_black_smoke, irandom_range(3, 5))
}

if attack_interval == 0 {
start_attacking = !start_attacking
	if start_attacking {
	attack_interval = 120
	} else {
	attack_interval = 300
	}
}

retreat_alarm--
switch (mystate) {
	case HELI_STATE.STOP:
		attack_interval--
		dir = point_direction(obj_player.x, obj_player.y, x, y);
		stop_zone = 750 * 1.5
		state_name = "stop"
		velocity = lerp(velocity, 0, 0.03)
	break;
	
	case HELI_STATE.CHASE:
		stop_zone = 750
		state_name = "chase"
		dir = point_direction(x, y, obj_player.x, obj_player.y); 	
		velocity = lerp(velocity, 7, 0.03)
	
		retreat_alarm = 60
	break;
	
	case HELI_STATE.AVOID:
		attack_interval--
		state_name = "AVOID"
		dir = point_direction(obj_player.x, obj_player.y, x, y); 
		velocity = lerp(velocity, 5, 0.04)
	break;
	
	case HELI_STATE.RETREAT:
		state_name = "RUN SON!"
		dir = image_angle
		//velocity = lerp(velocity, 20, 0.03)
	break;
	
	case HELI_STATE.ORBIT:
		state_name = "orbit"
		orbit_angle += orbit_spd;
		steering_spd = 0.005

		var target_x = obj_player.x + lengthdir_x(orbit_radius, orbit_angle);
		var target_y = obj_player.y + lengthdir_y(orbit_radius, orbit_angle);

		x = lerp(x, target_x, 0.04);
		y = lerp(y, target_y, 0.04);
	break;
	
	case HELI_STATE.ATTACK:
		attack_interval--
		state_name = "attack"
		var acc = 7
		var dmg = 200
		var spread = irandom_range(-acc, acc)
		
		dir = point_direction(obj_player.x, obj_player.y, x, y); 
		velocity = lerp(velocity, 6, 0.03)
		steering_spd = 0.05
		
		with instance_create_depth(x, y + 85, depth, par_enemybullet_SCAR) {
			image_angle = other.image_angle + spread
				
			fire_trail = true
			ignore_collision = true
			velocity = 50
			damage = dmg
		}
		
		with instance_create_depth(x, y + 85, depth, obj_casing) {
			left = true
			casing_type =  WeaponType.Bolt
			timer = 180
		}
		
		with instance_create_depth(x, y - 85, depth, par_enemybullet_SCAR) {
			image_angle = other.image_angle + spread
				
			fire_trail = true
			ignore_collision = true
			velocity = 50
			damage = dmg
		}
		
		with instance_create_depth(x, y - 85, depth, obj_casing) {
			left = true
			casing_type =  WeaponType.Bolt
			timer = 180
		}
		
		audio_play_sound(snd_heli_bren, 1, 0, 
		random_range(0.5, 0.6), 0, random_range(0.8, 1))
	break;
	
	case HELI_STATE.DEPLOYING:
		velocity = 9
		steering_spd = 0.012
		dir = point_direction(x, y, obj_player.x, obj_player.y);
		
		if collision_circle(x, y, deploy_zone, mi, false, true) && has_titan {
			with instance_create_depth(x, y, depth, obj_enemy_titan) {
				my_state = STATE.FREEFALL
				fall = -1000
			}
			has_titan = false
		}
	break;
}

x += lengthdir_x(velocity, dir);
y += lengthdir_y(velocity, dir);

dot_received = clamp(dot_received, 1, 3)
if dot_received > 1 {
reset_alarm = 5
}

if reset_alarm < 0 {
dot_received = 1
}
var mi = obj_player
shader_reset();

if (overclocked) {
	shader_set(shd_titan_overclocked);
	_time += 0.02 * (global.enemy_glow * 30 + 1)
	var uv1 = sprite_get_uvs(sprite_index, image_index);
	shader_set_uniform_f(_uniUV, uv1[0], uv1[2]);
	shader_set_uniform_f(_uniSpeed, _speed);
	shader_set_uniform_f(_uniTime, _time);
	shader_set_uniform_f(_uniSaturation, _saturation);
	shader_set_uniform_f(_uniBrightness, _brightness);
	shader_set_uniform_f(_uniSection, _section);
	shader_set_uniform_f(_uniMix, _mix);
	
	part_type_speed(global.pt_titan_fire, 4 * (global.enemy_glow * 5 + 1), 0, 0, 0)
	part_particles_create(global.sys_titan_fire, x + irandom_range(35, -35),
	y + 50, global.pt_titan_fire, irandom_range(5, 7) * (global.enemy_glow * 3 + 1))
}

flash_duration--
if (flash_duration > 0) {
    var white_amt = 0.5;
    shader_set(shd_muzzle);
    shader_set_uniform_f(shader_get_uniform(shd_muzzle, "u_white"), white_amt);
}

draw_shadow(sprite_index, global.grayness, global.shadow_x, global.shadow_y, global.all_offset, 
image_xscale * global.shadow_xscale, global.shadow_yscale, global.shadow_angle, image_alpha * 0.6)
draw_self();
shader_reset();

if death exit;
var dir = direction

if (my_state == STATE.IDLE) {
	dir = starting_dir
}

if (my_state == STATE.RETREAT) {
	dir = point_direction(x, y, obj_retreat_zone.x, obj_retreat_zone.y);
	
	if gun_type == WeaponType.Bolt
	|| gun_type == WeaponType.DMR {
		dir = point_direction(mi.x, mi.y, x, y)
	}
}

if (my_state == STATE.ATTACK) || heli_mounted {
	dir = point_direction(x, y, mi.x, mi.y)
}

if sprite_index == run_spr && name != obj_enemy_titan {
	gun_bob_time += gun_bob_speed * 2;
    var target = sin(gun_bob_time) * gun_bob_amount;
    smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.25);
} else if sprite_index == walk_spr {
	gun_bob_time += gun_bob_speed / 2;
	var target = sin(gun_bob_time) * gun_bob_amount;
	smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15) / 2;
}

gun_x = x + smooth_recoil_x
gun_y = y + smooth_arm_inertia + smooth_recoil_y

if gun_type == WeaponType.Pistol && my_state != STATE.RETREAT {
var amt = 44
var pistol_offset = (dir > 90 && dir < 270) ? -amt : amt;
gun_x = gun_x + pistol_offset
}

var lerp_str = 0.07
smooth_recoil_x = lerp(smooth_recoil_x, 0, lerp_str)
smooth_recoil_y = lerp(smooth_recoil_y, 0, lerp_str)

var flip = (dir > 90 && dir < 270) ? -1 : 1;		// If pointing the gun at the left, flip it
if dir > 90 && dir < 270 {
	image_xscale = -1
} else {
	image_xscale = 1
}

draw_sprite_ext(weapon[ewID, GUN.PLAYER_SPRITE], gun_frame, gun_x, gun_y, 1, flip, dir, c_white, image_alpha);
if !heli_mounted || phasing_timer > 0{
draw_sprite_ext(weapon[ewID, GUN.HEATED_BARREL], 0, gun_x, gun_y, 1, flip, dir, c_white, heat);
}


if !global.dev_mode exit;
draw_text_blend(x + 10,y + 10, hurt, c_red)

draw_text(x + 10,y + 30, cooldown)
draw_set_colour(c_white)

if global.pathfinding_debug {
draw_set_colour(c_red)
draw_circle(x, y, aggro_range, true)
draw_circle(x, y, base_aggro, true)
draw_line(x, y, obj_player.x, obj_player.y)
	
draw_set_colour(c_white);
draw_text(x + 20,y + 50, state_name)
draw_text(x - 50,y + 70, "minion:") draw_text(x + 50,y + 70, sniper_minion)

draw_set_colour(c_lime);
draw_path(path, x, y, true)
}

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

if death exit;
gun_dir = direction
if (my_state == STATE.IDLE) {
	gun_dir = starting_dir
}

if (my_state == STATE.RETREAT) {
	gun_dir = point_direction(x, y, obj_retreat_zone.x, obj_retreat_zone.y);
	
	if gun_type == WeaponType.Bolt
	|| gun_type == WeaponType.DMR {
		gun_dir = point_direction(mi.x, mi.y, x, y)
	}
}
	
tunring_spd = 0.1
if (my_state == STATE.ATTACK) || heli_mounted {
	gun_dir = point_direction(x, y, mi.x, mi.y)
	tunring_spd = 0.25
}

dir += angle_difference(gun_dir, dir) * tunring_spd;

if sprite_index == run_spr && name != obj_enemy_titan {
	smooth_arm_inertia = apply_bobbing(0.9, 1)
} else if sprite_index == walk_spr {
	smooth_arm_inertia = apply_bobbing(0.2, 0.5)
}

var offset_x = 0
var offset_y = 0
if gun_type == WeaponType.Pistol && my_state != STATE.RETREAT {
	offset_x = lengthdir_x(35, gun_dir);
	offset_y = lengthdir_y(35, gun_dir);
}

gun_x = x + offset_x + smooth_recoil_x
gun_y = y + offset_y + smooth_arm_inertia + smooth_recoil_y

var lerp_str = 0.07
smooth_recoil_x = lerp(smooth_recoil_x, 0, lerp_str)
smooth_recoil_y = lerp(smooth_recoil_y, 0, lerp_str)

var flip = (gun_dir > 90 && gun_dir < 270) ? -1 : 1;
if gun_dir > 90 && gun_dir < 270 {
	image_xscale = -1
} else {
	image_xscale = 1
}

switch (mask_index) {
	case body_hitbox:
		gun_scale = 1
	break;
	
	case giant_hitbox:
		gun_scale = 1.25
	break;
}

draw_sprite_ext(weapon[ewID, GUN.PLAYER_SPRITE], gun_frame, gun_x, gun_y, 1 * gun_scale, flip * gun_scale, dir, c_white, image_alpha);
if !heli_mounted || phasing_timer > 0{
draw_sprite_ext(weapon[ewID, GUN.HEATED_BARREL], 0, gun_x, gun_y, 1 * gun_scale, flip * gun_scale, dir, c_white, heat);
}
shader_reset();

if !global.dev_mode exit;
//draw_text_blend(x + 10,y + 10, enemy_hp, c_red)

//draw_text(x + 10,y + 30, "ammo : " + string(current_mag))
//draw_text(x + 10,y + 50, "hitbox : " + string(reload_timer))
//draw_text(x + 10,y + 70, state_name)
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

draw_set_color(c_yellow);

draw_rectangle(
    bbox_left,
    bbox_top,
    bbox_right,
    bbox_bottom,
    true
);
}

if !spotted exit;
painbar = lerp(painbar, (enemy_hp/maxhp) * hpbar_w, 0.02)
hpbar_w = 150;
hpbar_h = 80;
hpbar_x = (x) - (hpbar_w/2);
hpbar_y = y - 120;

draw_sprite_stretched(health_bar_bg, 0, hpbar_x, hpbar_y, hpbar_w, hpbar_h);
draw_sprite_stretched(health_bar_damaged, 0, hpbar_x, hpbar_y, painbar, hpbar_h);
draw_sprite_stretched(health_bar, 0, hpbar_x, hpbar_y, (enemy_hp/maxhp) * hpbar_w, hpbar_h);
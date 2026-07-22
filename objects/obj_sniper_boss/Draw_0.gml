flash_duration--
if (flash_duration > 0) {

    var white_amt = 0.5;

    shader_set(shd_muzzle);
    shader_set_uniform_f(shader_get_uniform(shd_muzzle, "u_white"), white_amt);
	
    draw_self();
    shader_reset();

} else {
    draw_self();
}

if death exit;

draw_text_blend(x + 10,y + 10, enemy_hp, c_red)

draw_text(x + 10,y + 30, death)
draw_text(x + 10,y + 50, dot_received)
draw_set_colour(c_white)

if global.pathfinding_debug {
draw_set_colour(c_red)
draw_circle(x, y, aggro_range, true)
draw_line(x, y, obj_player.x, obj_player.y)
	
draw_set_colour(c_white);
draw_text(x + 20,y + 50, state_name)
draw_text(x - 50,y + 70, "path alarm:") draw_text(x + 50,y + 70, path_alarm)

draw_set_colour(c_lime);
draw_path(path, x, y, true)


    draw_set_alpha(0.05);
    mp_grid_draw(global.grid);
    draw_set_alpha(1);
}

var mi = obj_player
var dir = direction

if (my_state == STATE.IDLE) {
	dir = starting_dir
}

if (my_state == STATE.RETREAT) {
	dir = point_direction(x, y, obj_retreat_zone.x, obj_retreat_zone.y);
}

if (my_state == STATE.ATTACK) {
	dir = point_direction(x, y, obj_player.x, obj_player.y)
}



if sprite_index == run_spr {
	gun_bob_time += gun_bob_speed * 2;
    var target = sin(gun_bob_time) * gun_bob_amount;
    smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15);
} else if sprite_index == walk_spr {
	gun_bob_time += gun_bob_speed / 2;
	var target = sin(gun_bob_time) * gun_bob_amount;
	smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15) / 2;
}

var gun_x = x + smooth_recoil_x
var gun_y = y + smooth_arm_inertia + smooth_recoil_y

if gun_type == WeaponType.Pistol && my_state != STATE.RETREAT {
var amt = 44
var pistol_offset = (dir > 90 && dir < 270) ? -amt : amt;
gun_x = gun_x + pistol_offset
}

var lerp_str = 0.07
smooth_recoil_x = lerp(smooth_recoil_x, 0, lerp_str)
smooth_recoil_y = lerp(smooth_recoil_y, 0, lerp_str)

var flip = (dir > 90 && dir < 270) ? -1 : 1;		// If pointing the gun at the left, flip it

draw_sprite_ext(weapon[ewID, GUN.PLAYER_SPRITE], gun_frame, gun_x, gun_y, 1, flip, dir, c_white, 1);
draw_sprite_ext(weapon[ewID, GUN.HEATED_BARREL], 0, gun_x, gun_y, 1, flip, dir, c_white, heat);

if dir > 90 && dir < 270 {
	image_xscale = -1
} else {
	image_xscale = 1
}
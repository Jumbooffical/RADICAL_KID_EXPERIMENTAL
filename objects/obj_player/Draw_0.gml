// Player sprite Muzzle flash effect
image_blend = c_white
if pride_month rainbow_shader;

if death draw_text(x, y - 30, "Press esc to restart")
if death exit;

flash_duration--;
if (flash_duration > 0) {

    var white_amt = 0.5;

    shader_set(shd_muzzle);
    shader_set_uniform_f(shader_get_uniform(shd_muzzle, "u_white"), white_amt);
	
    draw_self();
    shader_reset();

} else {
	draw_shadow(sprite_index, global.grayness, global.shadow_x, global.shadow_y, global.all_offset, 
	image_xscale * global.shadow_xscale, global.shadow_yscale, global.shadow_angle, 
	global.shadow_alpha - -global.earthquake/255)
		
	if my_state == state.lost_balance {
		draw_sprite_ext(sprite_index, image_index, x, y + global.earthquake, image_xscale, 1, image_angle, c_white, 1)
	} else {
		draw_self()
	}
}
shader_reset()
//draw_sprite(sprite_index, image_index, x, y + global.earthquake)

smooth_arm_inertia = lerp(smooth_arm_inertia, 0, 0.15);
// Dynamic gun animation
var dir_to_mouse = point_direction(x, y, mouse_x, mouse_y);
var dist = point_distance(x, y, mouse_x, mouse_y);
var arm_stretch = 300

var pistol_offset = player_offset * (dist / arm_stretch);

var offset_x = lengthdir_x(pistol_offset - aiming_offsetx, dir_to_mouse);
var offset_y = lengthdir_y(pistol_offset - aiming_offsetx, dir_to_mouse);
	
var flip = (mouse_x > x) ? 1 : -1;
gun_x = x + offset_x + smooth_recoil_x
gun_y = y + offset_y - aiming_offsety + smooth_arm_inertia + smooth_recoil_y

var lerp_str = 0.07
lerp_str = 0.07

smooth_recoil_x = lerp(smooth_recoil_x, 0, lerp_str)
smooth_recoil_y = lerp(smooth_recoil_y, 0, lerp_str)

pistol_recoil_angle = lerp(pistol_recoil_angle, 0, lerp_str*2)
	
var gun_dir = dir_to_mouse + inaccuracy
if !is_shooting {
	gun_dir = dir_to_mouse
}

if is_aiming {
	flip = (obj_reticle.x > x) ? 1 : -1;
}

// Draw gun
if (quickslot[selected_item, QSlot.Gun] != noone) && (player_armed) && (!is_rolling)
{
	// Laser sight
	instance_deactivate_object(obj_laser)
	if (have_laser) {
		instance_activate_object(obj_laser)
		obj_laser.x = gun_x
		obj_laser.y = gun_y
		obj_laser.image_angle = gun_dir
	}
	
	// Flashlight
	instance_deactivate_object(obj_player_flashlight)
	if (have_flashlight) {
		instance_activate_object(obj_player_flashlight)
		obj_player_flashlight.x = gun_x
		obj_player_flashlight.y = gun_y
		obj_player_flashlight.image_angle = gun_dir
	}
	
	if is_ejecting {
		eject(weapon[quickslot[selected_item, QSlot.Gun], GUN.PLAYER_SPRITE], mouse_dir)
		is_ejecting = false
	}
	
if (flash_duration > 0) {
    var white_amt = 0.5;
    shader_set(shd_muzzle);
    shader_set_uniform_f(shader_get_uniform(shd_muzzle, "u_white"), white_amt);	
}	

	// Draw gun
	draw_sprite_ext(
	    weapon[quickslot[selected_item, QSlot.Gun], GUN.PLAYER_SPRITE],
	    gun_frame,
	    gun_x,
	    gun_y,
	    1, flip, gun_dir - pistol_recoil_angle, c_white, 1
	);
	
	//Heated barrel animation
	draw_sprite_ext(
        weapon[quickslot[selected_item, QSlot.Gun], GUN.HEATED_BARREL],
        gun_frame,
        gun_x,
        gun_y,
        1, flip, gun_dir - pistol_recoil_angle, c_white, gun_heat
    );
	
	shader_reset()
}

//Draw melee
if (quickslot[selected_item, QSlot.Melee] != noone) && (!player_armed)  && (!is_rolling)
&& selected_item == melee_quickslot {
	idle_spr = spr_player_idle_noarm
	run_spr = spr_player_running_noarm

	if melee[meleeIndex, MELEE.HANDED] == 1 {
	idle_spr = spr_player_idle
	run_spr = spr_player_running_onearm
	}
	
	switch (attack_style) {
	case animation.pummel:
	fist_animation()
	break;
		
	case animation.stab:
	stab_animation()
	break;
	
	case animation.swing:
	swing_animation()
	break;
	}
}

// Draw nade
if (quickslot[selected_item, QSlot.Nade] != noone) && (!player_armed) {
	grab_nade_animation()
	idle_spr = spr_player_idle
	run_spr = spr_player_running_onearm
}
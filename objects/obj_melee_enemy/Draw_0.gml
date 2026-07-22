draw_shadow(sprite_index, global.grayness, global.shadow_x, global.shadow_y, global.all_offset, 
image_xscale * global.shadow_xscale, global.shadow_yscale, global.shadow_angle, image_alpha * 0.6)
draw_self()

if death exit;
//draw_text_blend(x + 10,y + 10, cooldown, c_red)
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
}

if sprite_index == run_spr {
	smooth_arm_inertia = apply_bobbing(0.7, 1)
} else if sprite_index == walk_spr {
	smooth_arm_inertia = apply_bobbing(0.3, 0.8)
}

switch (attack_style) {
	case animation.pummel:
	enemy_fist_animation()
	break;	
	
	case animation.stab:
	enemy_stab_animation()
	break;
	
	case animation.swing:
	enemy_swing_animation()
	break;
}

idle_spr = spr_goon_idle_noarm
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running_noarm

if hands_count == 1 {
idle_spr = spr_goon_idle
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running
}


painbar = lerp(painbar, (enemy_hp/maxhp) * hpbar_w, 0.02)
hpbar_w = 150;
hpbar_h = 80;
hpbar_x = (x) - (hpbar_w/2);
hpbar_y = y - 120;

if !spotted exit;
draw_sprite_stretched(health_bar_bg, 0, hpbar_x, hpbar_y, hpbar_w, hpbar_h);
draw_sprite_stretched(health_bar_damaged, 0, hpbar_x, hpbar_y, painbar, hpbar_h);
draw_sprite_stretched(health_bar, 0, hpbar_x, hpbar_y, (enemy_hp/maxhp) * hpbar_w, hpbar_h);

draw_self()
if death exit;
draw_text_blend(x + 10,y + 10, enemy_hp, c_red)

draw_text(x + 10,y + 30, state_name)
draw_text(x + 10,y + 50, "is rolling:" + string(is_rolling))
draw_text(x + 10,y + 70, "will dodge:" + string(will_dodge))
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
	gun_bob_time += gun_bob_speed
    var target = sin(gun_bob_time) * gun_bob_amount * 1.5;
    smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15);
} else if sprite_index == walk_spr {
	gun_bob_time += gun_bob_speed / 2;
	var target = sin(gun_bob_time) * gun_bob_amount;
	smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.15) / 2;
}

switch (attack_style) {
	case animation.swing:
	enemy_swing_animation()
	break;
}

idle_spr = spr_goon_idle_noarm
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running_noarm

if melee[ewID, MELEE.HANDED] == 1 {
idle_spr = spr_goon_idle
walk_spr = spr_goon_walk_noarm
run_spr = spr_goon_running
}
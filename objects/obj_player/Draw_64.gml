if (death) exit;
draw_sprite_ext(spr_mani, 0, 50, 715, 1.2, 1.2, -15, c_white, 0.7)

cash_text = lerp(cash_text, cash, 0.05)
if cash_textscale > 2.05 draw_set_colour(c_lime)
if cash_text > cash+1 draw_set_color(c_red)
if text_shake_alarm > 0 draw_set_color(c_red)
draw_text_transformed(
	90 + (cash_textscale-2) * 5 + text_shake, 
	700 - (cash_textscale-2) * 15, 
	round(cash_text),
	cash_textscale, cash_textscale, 0)
draw_set_colour(c_white)

cash_textscale = lerp(cash_textscale, 2, 0.1)
text_shake_alarm--
if text_shake_alarm > 0 {
	text_shake = sin(current_time * 0.05) * 7;
} else {
	text_shake = 0
}

// Health bar
if pain <= 0 {
	painbar = lerp(painbar, (hp/maxhp) * hpbar_w, 0.1)
}

draw_set_valign(pain)
draw_sprite_stretched(health_bar_bg, 0, hpbar_x, hpbar_y, hpbar_w, hpbar_h);
draw_sprite_stretched(health_bar_damaged, 0, hpbar_x, hpbar_y, painbar, hpbar_h);
draw_sprite_stretched(health_bar, 0, hpbar_x, hpbar_y, (hp/maxhp) * hpbar_w, hpbar_h);

draw_set_alpha(global.healthbar_glow)
global.healthbar_glow = lerp(global.healthbar_glow, 0, 0.02)
draw_sprite_stretched(health_bar_regen, 0, hpbar_x, hpbar_y, (hp/maxhp) * hpbar_w, hpbar_h);
draw_set_alpha(1)

// Combo Bar
var c_offset = 10
draw_sprite_stretched(combo_bar_bg, 0, hpbar_x, hpbar_y + c_offset, hpbar_w, hpbar_h/2);
draw_sprite_stretched(combo_bar, 0, hpbar_x, hpbar_y + c_offset, 
(global.combo_cd/global.max_combo_cd) * hpbar_w, hpbar_h/2);

draw_text_transformed(hpbar_x - 50 - ((combo_textscale-2) * 15), 
hpbar_y + c_offset - ((combo_textscale-2) * 15), "x"+string(global.combo), 
combo_textscale, combo_textscale, 0)
combo_textscale = lerp(combo_textscale, 2, 0.1)

// Convert camera view to screen coordinates
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

// Example: draw near player position on the screen
var screen_x = x - cam_x;
var screen_y = y - cam_y;
var offset = 15
if (!is_aiming) {
// Reload bar
if (is_reloading) {
draw_sprite_stretched(reload_bar_bg, gui_frame, rlbar_x, rlbar_y, rlbar_w, rlbar_h);
draw_sprite_stretched(reload_bar, gui_frame, rlbar_x, rlbar_y, rlbar_w, 
	min((reload_timer/max_reload) * rlbar_h, rlbar_h));

var xoffset = 130
if reload_timer <= 0 {
	draw_text(rlbar_x - xoffset, rlbar_h + 50, "READY!")
	cooldown = 30
} else {
	draw_text(rlbar_x - xoffset, rlbar_h + 50, "reloading . . .")
}
	draw_text(rlbar_x - xoffset, rlbar_h + 25, "SELECT YOUR MAGS")
}

// Gun UI
if (!open_inventory) {
if (player_armed) {
var caliber = weapon[par_gun.weaponIndex, GUN.CALIBER_ID]
	draw_text(screen_x + offset, screen_y + offset, quickslot[selected_item, QSlot.LoadedAmmo]);
	draw_text(screen_x - offset, screen_y + offset, obj_player.current_magazine[caliber]);
	
	if (full_auto) {
	    draw_text(screen_x + offset + 20, screen_y + offset - 20, "Full Auto");
	} else {
	    draw_text(screen_x + offset + 20, screen_y + offset - 20, "Semi");
	}
}
//draw_text(screen_x + offset + 40, screen_y + offset + 60, burst_failure);
draw_text(screen_x + offset + 40, screen_y + offset + 80, state_name);
}}
draw_text(screen_x + offset + 40, screen_y + offset + 100, selected_item);
draw_text(screen_x + offset + 40, screen_y + offset + 120, "pain: "+string(pain));

if hp < prev_hp {
pain += (prev_hp - hp) * 0.01
}
prev_hp = hp

if pain > 1 {
pain = 1
}
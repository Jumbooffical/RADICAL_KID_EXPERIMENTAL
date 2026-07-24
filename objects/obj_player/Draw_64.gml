
var ammo_x = 40
var ammo_y = 850
var txt_scale = 1.1
draw_text_transformed(1500, ammo_y, "Level: " + string(global.level - 1) + "/9", txt_scale, txt_scale, 0)
draw_text_transformed(1425, ammo_y + 25, "Run Duration: " + display_duration(time_elapsed), txt_scale, txt_scale, 0)
draw_text_transformed(1500, ammo_y + 50, "Death: " + string(death_count), txt_scale, txt_scale, 0)
draw_text_transformed(1500, ammo_y + 75, "FPS: " + string(fps), txt_scale, txt_scale, 0)

if (death) exit;
if is_aiming && pain <= 0 { 
	draw_set_alpha(0.2)
} else {
	draw_set_alpha(1)	
}

hpbar_w = 400;
hpbar_h = 130;
hpbar_x = (850) - (hpbar_w/2);
hpbar_y = 870;

status_x = 1630
// Health bar
if pain <= 0 {
	painbar = lerp(painbar, (hp/maxhp) * hpbar_w, 0.1)
}

draw_set_valign(pain)
draw_sprite_stretched(health_bar_bg, 0, hpbar_x, hpbar_y, hpbar_w, hpbar_h);
draw_sprite_stretched(health_bar_damaged, 0, hpbar_x, hpbar_y, painbar, hpbar_h);
draw_sprite_stretched(health_bar, 0, hpbar_x, hpbar_y, (hp/maxhp) * hpbar_w, hpbar_h);
draw_text(hpbar_x + 5, hpbar_y + 57, string(round(hp)) + "/" + string(maxhp))

//draw_set_alpha(global.healthbar_glow)
//global.healthbar_glow = lerp(global.healthbar_glow, 0, 0.02)
//draw_sprite_stretched(health_bar_regen, 0, hpbar_x, hpbar_y, (hp/maxhp) * hpbar_w, hpbar_h);
//draw_set_alpha(1)

// Combo Bar
var c_offset = 10
draw_sprite_stretched(combo_bar_bg, 0, hpbar_x, hpbar_y + c_offset, hpbar_w, hpbar_h/2);
draw_sprite_stretched(combo_bar, 0, hpbar_x, hpbar_y + c_offset, 
(global.combo_cd/global.max_combo_cd) * hpbar_w, hpbar_h/2);

combo_textscale = clamp(combo_textscale, 2, 30)
combo_textscale = lerp(combo_textscale, 2, 0.1)
draw_text_transformed(hpbar_x - 50 - ((combo_textscale-2) * 15), 
hpbar_y + c_offset - ((combo_textscale-2) * 15), "x"+string(global.combo), 
combo_textscale, combo_textscale, 0)

// Display ammo
if player_armed {
	var frame = 0	
	if quickslot[selected_item, QSlot.LoadedAmmo] < (mag_size * 0.25) {
		frame = 1
	} else {
		frame = 0
	}
	draw_sprite_ext(spr_small_textbox, frame, 840, hpbar_y - 10, 1.5, 1.05, 0, c_white, 1)
	draw_text_transformed(830, hpbar_y-25, 
	round(quickslot[selected_item, QSlot.LoadedAmmo]), 1.35, 1.35, 0)
	
	//Fire mode
	var mode = ""
		if (full_auto) {
			mode = "Auto"
		} else {
		    mode = "Semi"
		}
	draw_text_transformed(800, hpbar_y + 15, 
	"[C]:" + string(mode), 1, 1, 0)
	
	// Display caliber
	var caliber = 0
	switch (weapon[wID, GUN.CALIBER_ID]) {
		case Caliber.Medium:
			caliber = ammoMed
		break;
		
		case Caliber.Light:
			caliber = ammoLight
		break;
		
		case Caliber.Heavy:
			caliber = ammoHeavy
		break;
		
		case Caliber.Long:
			caliber = ammoLong
		break;
		
		case Caliber.Shell:
			caliber = ammoShell
		break;
	}
	draw_sprite(caliber, 0, 720, hpbar_y)
	if current_magazine[weapon[wID, GUN.CALIBER_ID]] == 0 { draw_set_colour(c_red) }
	draw_text_transformed(740, hpbar_y, 
	": " + string(current_magazine[weapon[wID, GUN.CALIBER_ID]]),
	1.2, 1.2, 1)
	draw_set_colour(c_white)
	
	if is_reloading {
		draw_sprite_ext(caliber, 0, 740, hpbar_y - 25, 0.7, 0.7, 0, c_white, 0.5)
		draw_text_blend(700, hpbar_y - 25, "-1", c_red)
	}
	
	with (current_mag_gui) {
		x = 940
		y = other.hpbar_y
	}
}

draw_set_alpha(1)

if is_aiming exit;
draw_sprite_ext(spr_mani, 0, 50, 915, 1.2, 1.2, -15, c_white, 0.7)

cash_text = lerp(cash_text, cash, 0.05)
if cash_textscale > 2.05 draw_set_colour(c_lime)
if cash_text > cash+1 draw_set_color(c_red)
if text_shake_alarm > 0 draw_set_color(c_red)
draw_text_transformed(
	90 + (cash_textscale-2) * 5 + text_shake, 
	900 - (cash_textscale-2) * 15, 
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

draw_sprite(ammoLight, 0, ammo_x, ammo_y - 100);
draw_text(ammo_x + 25, ammo_y - 100, ": " + string(current_magazine[Caliber.Light]));

draw_sprite(ammoMed, 0, ammo_x, ammo_y - 75);
draw_text(ammo_x + 25, ammo_y - 75, ": " + string(current_magazine[Caliber.Medium]));
	
draw_sprite(ammoShell, 0, ammo_x, ammo_y - 50);
draw_text(ammo_x + 25, ammo_y - 50, ": " + string(current_magazine[Caliber.Shell]));
	
draw_sprite(ammoHeavy, 0, ammo_x, ammo_y - 25);
draw_text(ammo_x + 25, ammo_y - 25, ": " + string(current_magazine[Caliber.Heavy]));
	
draw_sprite(ammoLong, 0, ammo_x, ammo_y);
draw_text(ammo_x + 25, ammo_y, ": " + string(current_magazine[Caliber.Long]));


var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

var screen_x = x - cam_x;
var screen_y = y - cam_y;
var offset = 15

// Reload bar
rlbar_w = 18;
rlbar_h = 240;
rlbar_x = 1067
rlbar_y = 288

if (is_reloading) {
draw_sprite_stretched(reload_bar_bg, gui_frame, rlbar_x, rlbar_y / 1.5, rlbar_w, rlbar_h * 1.25);
draw_sprite_stretched(reload_bar, gui_frame, rlbar_x, rlbar_y / 1.5, rlbar_w, 
	min((reload_timer/max_reload) * rlbar_h, rlbar_h) * 1.25);

var xoffset = 290
if reload_timer <= 0 {
	draw_text(rlbar_x - xoffset, rlbar_h + 50, "READY!")
	cooldown = 30
} else {
	draw_text(rlbar_x - xoffset, rlbar_h + 50, "reloading . . .")
}
	draw_text(rlbar_x - xoffset, rlbar_h + 25, "SELECT YOUR MAGS")
}

if !open_inventory exit;
var mut = applied_mutation
var col = c_white

draw_set_colour(c_lime)
draw_text_transformed(190, 230, "MUTATIONS/", 1.5, 1.5, 0)
draw_set_colour(c_red)
draw_text_transformed(330, 230, "/DEFECTS", 1.5, 1.5, 0)
draw_set_colour(c_white)
for (var i = 0; i < array_length(mut); i++) {
	switch (mut[i].rarity) {
		case U_RARITY.COMMON:
			col = c_green
		break;
				
		case U_RARITY.RARE:
			col = c_lime
		break;
				
		case U_RARITY.DEFECT:
			col = c_maroon
		break;
				
		case U_RARITY.MAJOR_DEFECT:
			col = c_red
		break;
	}
	draw_text_blend(190, 260 + (i * 25), mut[i].name + ": " + mut[i].desc, col)
}
		
draw_set_colour(c_red)
draw_text_transformed(1150, 230, "ENEMY MUTATIONS", 1.5, 1.5, 0)
draw_set_colour(c_white)
var e_mut = applied_enemy_mutation
for (var i = 0; i < array_length(e_mut); i++) {
	draw_text_blend(1150, 260 + (i * 25), e_mut[i].name + ": " + e_mut[i].desc, c_red)
}
with (obj_player) {
	if (mp_grid_get_cell(global.grid, x div other.cell_size, y div other.cell_size) == -1)
	{
		mp_grid_clear_cell(global.grid, x div other.cell_size, y div other.cell_size)
	}
}

with (par_enemy) {
	if (mp_grid_get_cell(global.grid, x div other.cell_size, y div other.cell_size) == -1)
	{
		mp_grid_clear_cell(global.grid, x div other.cell_size, y div other.cell_size)
	}
}

if (global.grid_dirty) {
	global.grid_dirty = false;
	
	mp_grid_clear_all(global.grid);
	mp_grid_add_instances(global.grid, par_pathwall, false);
}

if global.ringing > 1 {
global.ringing = 1
}

if global.ringing > 0 {
global.ringing -= 0.0015
}

if global.enemy_glow > 0 {
global.enemy_glow -= 0.003
}

audio_sound_gain(snd_tinnitus, global.ringing)

if keyboard_check_pressed(ord("P")) {
global.pathfinding_debug = !global.pathfinding_debug
}

if mouse_check_button_released(mb_right) 
&& (obj_player.is_dragging)
&& !position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_store_mag) {
	with (obj_player) {
	rmb_hold_mag = 0
	is_dragging = false
	}	
}

global.earthquake += zspd;
if global.earthquake > 0 {
	global.earthquake = 0	//inactive
} else {
	zspd += grav
}

if room == SniperBossRoomDay
|| room == SniperBossRoomSunset {
	if global.sniper_revive > 0 && instance_number(obj_sniper_boss) == 0 {
		global.green_glow = 0.45
		audio_play_sound(snd_sniper_revive, 1, 0, 5)
		
		room_goto(global.sniper_room[global.sniper_revive])
		
		with (obj_player) {
		drop_weapon(noone, selected_item)
		}
		global.sniper_revive--
		exit;
	}
}

if keyboard_check_released(ord("N")) {
	savegame()
}
if keyboard_check_released(ord("M")) {
	loadgame()
}

audio_set_master_gain(audiogroup_default, 1 * global.master_volume)
global.deflect_snd_gain = 3
if obj_player.gun_type == WeaponType.Shotgun {
	global.deflect_snd_gain = 1
}
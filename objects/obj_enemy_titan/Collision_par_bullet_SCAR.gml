event_inherited()
if my_state = STATE.DODGE
|| my_state = STATE.TELEPORT exit;
if other.object_index == obj_incendiary_bullet exit;

part_particles_create(global.sys_spark, x, y, global.pt_spark, 12);
audio_play_sound(random_array(global.deflect_snd), 1, 0, global.deflect_snd_gain)

with instance_create_depth(obj_player.x, obj_player.y, depth, obj_blindfire_spot) {
timer = 60
}

flash_duration = 2

if obj_player.selected_item == obj_player.melee_quickslot exit;
stamina -= 9
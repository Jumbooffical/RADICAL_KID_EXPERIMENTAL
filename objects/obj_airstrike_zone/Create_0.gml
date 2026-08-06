delay = 120
timer = 600

radius = 3000;
jetfighter = 3
audio_play_sound(snd_airstrike_siren, 1, 0, 2)
with instance_create_depth(x, y, depth, room_afterimage) {
	sprite_index = spr_airstrike_spot;
}
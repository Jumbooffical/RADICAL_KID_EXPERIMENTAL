if outside_cam exit;
depth = obj_player.depth - 1

if place_meeting(x, y, obj_reticle) && obj_player.is_aiming {
	image_alpha -= 0.02
} else {
	image_alpha = 1
}

image_alpha = clamp(image_alpha, 0.5, 1)

var inside = place_meeting(x, y, obj_player);
global.bush_snd = [snd_bushenter1, snd_bushenter2, snd_bushenter3]
if (inside && !player_was_inside)
{
    bush_react = 0.3;
	audio_play_sound(global.bush_snd[irandom(array_length(global.bush_snd)-1)], 1, 0, 0.1)
}
player_was_inside = inside;

bush_react = lerp(bush_react, 0, 0.015)
image_yscale = 1 + bush_react

if global.pathfinding_debug {
visible = false
} else {
visible = true
}
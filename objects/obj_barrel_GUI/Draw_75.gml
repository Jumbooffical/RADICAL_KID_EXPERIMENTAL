with (obj_player) {
other.sprite_index = quickslot[selected_item, QSlot.Barrel]
}

image_xscale = scale
image_yscale = scale

if sprite_index == spr_burst_amplifier {
	if obj_player.burst_failure {
		draw_text_colour(x, y + 15, "/3 inactive! reload!", c_red,c_red,c_red,c_red,1)
		draw_text_colour(x -12, y + 15, obj_player.burst_fired, c_red,c_red,c_red,c_red,1)
		image_blend = c_maroon
	} else {
		draw_text_colour(x, y + 15, "/3 active!", c_lime,c_lime,c_lime,c_lime,1)
		draw_text_colour(x -12, y + 15, obj_player.burst_fired, c_lime,c_lime,c_lime,c_lime,1)
		image_blend = c_white
	}
	
	with (obj_player) {
		sound_alarm--
		if sound_alarm == 0 {
			if burst_failure {
				audio_play_sound(snd_burst_fail, 1, 0, 1, 0, 1)
			}
			
			if !burst_failure {
				audio_play_sound(snd_burst_ready, 1, 0, 3, 0, 1)
				obj_barrel_GUI.scale = 8
			}
		}
	}
}


if sprite_index == spr_kunai_launcher {
	draw_text_transformed(x, y + 15, obj_player.kunai, scale, scale, 0)
}
event_inherited()
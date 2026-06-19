if enabled {
sprite_index = spr_ui_check
} else {
sprite_index = spr_ui_button
}

switch (button_id) 
{
	case 0: // Tinnitus
		global.enable_tinnitus = enabled
		
		if !global.enable_tinnitus {
		audio_stop_sound(snd_tinnitus);
		global.ringing = 0
		}
	break;
	
	case 1: // Muzzle flash
		global.enable_mflash = enabled
	break;
}
switch (button_id) 
{
	case 0: // Resume
		obj_pause_manager.paused = false;
		obj_pause_manager.update_pause();
		
		game_restart()
	break;
	
	case 1: // Settings
		layer_set_visible("PauseLayer", false)
		layer_set_visible("SettingsLayer", true)
	break;
	
	case 2: // Quit
		game_end()
	break;
	
	case 3: // Settings > Back
		savesettings()
		layer_set_visible("PauseLayer", true)
		layer_set_visible("SettingsLayer", false)
	break;
	
	case 4: // Credit
		layer_set_visible("PauseLayer", false)
		layer_set_visible("CreditsLayer", true)
	break;
	
	case 5: // Credits > Back
		layer_set_visible("PauseLayer", true)
		layer_set_visible("CreditsLayer", false)
	break;
	
	case 6: // Load game
		obj_pause_manager.paused = false;
		obj_pause_manager.update_pause();
	
		loadgame()
	break;
	
	case 7: // Reset to Default
		loadsettings()
	break;
	
	case 8: // Mail
		layer_set_visible("PauseLayer", false)
		layer_set_visible("MailLayer", true)
	break;
	
	case 9: // Mail > Back
		layer_set_visible("PauseLayer", true)
		layer_set_visible("MailLayer", false)
	break;
	
	case 10: // Bugs report
		 url_open("https://forms.gle/ddfp7qmBx7YCQT97A")
	break;
	
	case 11: // Feedback
		url_open("https://forms.gle/cgkMohfnYcYs7Rn97")
	break;
}
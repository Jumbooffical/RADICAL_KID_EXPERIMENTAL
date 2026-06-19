paused = false
layer_name = "PauseLayer"

update_pause = function() {
	if paused {
	instance_deactivate_all(true)
	instance_activate_object(id);
	layer_set_visible(layer_name, true)
	audio_pause_all();
	} else {
	instance_activate_all()
	layer_set_visible(layer_name, false)
	layer_set_visible("SettingsLayer", false)
	audio_resume_all();
	}
}

update_pause();

layer_set_visible("SettingsLayer", false);
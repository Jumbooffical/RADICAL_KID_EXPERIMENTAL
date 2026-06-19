function loadsettings() {
    if (!file_exists("radicalkid.set")) {
        show_debug_message("Save file not found!");
        return;
    }

    var _buffer = buffer_load("radicalkid.set");
    var _string = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);

    var _loadData = json_parse(_string);

    while (array_length(_loadData) > 0) {
        var _saveData = array_pop(_loadData);
		var _options = _saveData.options;
		
		with (obj_switch_panel) {
		    switch (button_id) {
		        case 0: option = _options.screenshake; break;
		        case 1: option = _options.tilt; break;
		        case 2: option = _options.volume; break;
		    }
		}

		with (obj_checkbox) {
		    switch (button_id) {
		        case 0: enabled = _options.tinnitus; break;
		        case 1: enabled = _options.muzzleflash; break;
		    }
		}
    }
}
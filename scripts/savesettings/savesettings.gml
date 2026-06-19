function savesettings() {
    var _saveData = array_create(0);

	var _options = {
    screenshake : 0,
    tilt : 0,
    volume : 0,
	tinnitus : 0,
	muzzleflash : 0
	};

		with (obj_switch_panel) {
		    switch(button_id) {
		        case 0: _options.screenshake = option; break;
		        case 1: _options.tilt = option; break;
		        case 2: _options.volume = option; break;
		    }
		}
	
		with (obj_checkbox) {
		    switch(button_id){
		        case 0: _options.tinnitus = enabled; break;
		        case 1: _options.muzzleflash = enabled; break;
		    }
		}

        var _savePlayer = {
            options : _options
        };
        array_push(_saveData, _savePlayer);
	
	var _string = json_stringify(_saveData)
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "radicalkid.set");
	buffer_delete(_buffer);
}
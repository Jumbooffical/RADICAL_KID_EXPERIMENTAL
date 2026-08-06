function load_progression() {	
    if (!file_exists("radicalkid.pro")) {
        show_debug_message("Save file not found!");
        return;
    }

    var _buffer = buffer_load("radicalkid.pro");
    var _string = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);

    var _loadData = json_parse(_string);

    while (array_length(_loadData) > 0) {

        var _loadPlayer = array_pop(_loadData);
	
		with (obj_controller) {
			global.unlocked_hardmode = _loadPlayer.unlocked_hardmode
		}
    }
}
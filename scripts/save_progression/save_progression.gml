function save_progression() {
    var _saveData = array_create(0);

    with (obj_controller) {
        var _savePlayer = {
			unlocked_hardmode : global.unlocked_hardmode
        };
        array_push(_saveData, _savePlayer);
    }
	
	var _string = json_stringify(_saveData)
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "radicalkid.pro");
	buffer_delete(_buffer);
	
	show_debug_message("Saved progression!")
}
function display_duration(_alarm) {
    var total_seconds = round(_alarm div 60);
    var minutes = round(total_seconds div 60);
    var seconds = round(total_seconds mod 60);

    if (minutes > 0) {
        return string(minutes) + "m: " + string(seconds) + "s";
    } else {
		return string(seconds) + "s";
    }
}
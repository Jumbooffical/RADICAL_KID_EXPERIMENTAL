// Inherit the parent event
event_inherited();

visible = false
if obj_player.flash_duration > 0 {
visible = true
}

// Prevent duplicate
if (instance_number(obj_muzzle_flash) > 1) {
	instance_destroy();
}
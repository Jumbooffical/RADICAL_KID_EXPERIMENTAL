debuff_wallhacked = false
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

var screen_x = x - cam_x;
var screen_y = y - cam_y;

// Room Start event (Player)
if (instance_exists(obj_spawn)) {
    // Move player to spawn node position
    var spawn = instance_find(obj_spawn, 0);
    x = spawn.x;
    y = spawn.y;
	spawned = true
}

if (spawned) {
	x = x
	y = y
	spawned = false
}

// Entering new room may randomly use default scar indexes instead of current gun
// This should ensure gun index to sync properly
if selected_item == melee_quickslot exit;
if selected_item == nade_quickslot exit;
drop_weapon(noone, selected_item)
pick_up_weapon(noone)
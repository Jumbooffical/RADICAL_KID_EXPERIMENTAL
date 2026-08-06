instance_create_depth(x, y, depth, obj_controller)
instance_create_depth(x, y, depth, obj_inventory)
instance_create_depth(x, y, depth, obj_pause_manager)
instance_create_depth(x, y, depth, obj_quickslot_gui)

instance_create_depth(x, y, depth - 199, obj_reticle)

instance_create_depth(x, y, depth, obj_patrol_spot)
instance_create_depth(x, y, depth, obj_retreat_zone)


var spacing = 88;
for (var i = 0; i < obj_player.max_pocket; i++) {
instance_create_depth(832, 525 + spacing * i, 0, obj_pocket_mag)
}

instance_create_depth(940, obj_player.hpbar_y, depth, current_mag_gui)
instance_create_depth(x, y, depth, obj_optic_GUI)
instance_create_depth(x, y, depth, obj_grip_GUI)
instance_create_depth(x, y, depth, obj_mount_GUI)
instance_create_depth(x, y, depth, obj_barrel_GUI)

instance_create_depth(1330, 30, depth, buff_gui)
instance_create_depth(1330, 80, depth, debuff_gui)


layer_set_visible("SettingsLayer", true)
loadsettings()
load_progression()

instance_create_depth(x, y, depth, obj_gmlive)
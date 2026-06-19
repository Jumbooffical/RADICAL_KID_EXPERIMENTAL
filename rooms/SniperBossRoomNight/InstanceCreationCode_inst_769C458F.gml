if !instance_exists(obj_controller) exit;
if global.sniper_revive == 0 {
instance_activate_object(self)
} else {
instance_deactivate_object(self)
}
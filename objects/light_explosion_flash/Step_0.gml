// Inherit the parent event
event_inherited();
var nearest = instance_nearest(x, y, obj_explosion)
if nearest.smoke_delay == 2 {
instance_destroy()
}
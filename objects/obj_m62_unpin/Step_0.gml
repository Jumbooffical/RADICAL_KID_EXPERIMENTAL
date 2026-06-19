event_inherited()

if timer == 0 {
global.explode = true
instance_create_depth(x, y, depth, obj_explosion)
instance_destroy()
}
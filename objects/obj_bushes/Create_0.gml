
bush_react = 0
reacted = false
player_was_inside = false
if rng < 5 {
instance_create_depth(x, y, depth, obj_bear_trap)
} else if rng < 0.5 {
instance_create_depth(x, y, depth, par_box)
}
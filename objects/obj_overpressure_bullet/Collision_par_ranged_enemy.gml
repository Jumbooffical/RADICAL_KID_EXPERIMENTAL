var knockback = weapon[wID, GUN.RECOIL] * 3
var mouse_dir = point_direction(other.x, other.y, mouse_x, mouse_y) - 180;
other.smooth_knockback_x += lengthdir_x(knockback, mouse_dir)
other.smooth_knockback_y += lengthdir_y(knockback, mouse_dir)

event_inherited()
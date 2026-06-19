visible = obj_player.have_laser
if !obj_player.have_laser exit;
image_alpha = random_range(0.5, 0.9)
image_yscale = yscale
direction = point_direction(x, y, mouse_x, mouse_y)

if obj_player.is_aiming {
direction = point_direction(x, y, obj_reticle.x, obj_reticle.y)
}

if obj_player.is_rolling || !obj_player.player_armed {
visible = false
}

var dist = range

for (var i = 0; i < range; i++) {
    var x2 = x + lengthdir_x(i, direction)
    var y2 = y + lengthdir_y(i, direction) - obj_player.aiming_offsety

    if collision_point(x2, y2, par_indestructable, false, true) {
        dist = i
        break
    }
}

image_xscale = dist / sprite_get_width(sprite_index)

if instance_number(obj_laser) > 1 {
	instance_destroy()
}
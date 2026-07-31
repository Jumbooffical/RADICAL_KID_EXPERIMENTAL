event_inherited()
sprite_index = spr_bouncing_bullet
ricochet_accuracy = obj_player.ricochet_accuracy
apply_ricochet(par_indestructable)

image_angle = direction

if ricochet_count == obj_player.max_ricochet {
instance_destroy()
}

if obj_player.quickslot[obj_player.selected_item, QSlot.Mag] == spr_rubber_jacket {
	damage = obj_player.stat.damage_output / 1.5
	
	if ricochet_count > 0 {
	damage = obj_player.stat.damage_output * 2
	velocity = 55
	image_blend = c_red
	}
}
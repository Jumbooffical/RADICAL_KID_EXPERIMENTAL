//velocity = weapon[wID, GUN.VELOCITY]
image_index = 1;
text_float++
if !obj_player.is_reloading {
my_state = bullet_state.NORMAL
}

if soulbinded {
my_state = bullet_state.SOULBINDED
}

var mi = obj_player

if obj_player.have_suppressor {
image_alpha = 0.3
}

// Prevent penetration to screen boarder and wall
var _p = 64;
if !point_in_rectangle(x, y, -_p, -_p, room_width + _p, room_height + _p) {
	my_state = bullet_state.DESTROYED
}

if place_meeting(x, y, par_indestructable)
&& my_state == !bullet_state.SMART 
&& my_state == !bullet_state.HEATSEEK
&& my_state == !bullet_state.SOULBINDED
&& sprite_index != spr_bouncing_bullet {
	my_state = bullet_state.DESTROYED
}

if distance_to_object(par_gun) > weaponLength / 8
&& obj_player.selected_item != obj_player.melee_quickslot {
visible = true	
}

	if mi.quickslot[mi.selected_item, QSlot.Buff_Overclocked] > 0 {
		part_particles_create(mi.sys_fire_gui, x, y, mi.pt_bullet_trail, irandom_range(3, 5))
		velocity = 50
	}
	
	if mi.quickslot[mi.selected_item, QSlot.Buff_Smart] > 0 {
		my_state = bullet_state.SMART
	}
	
	if mi.quickslot[mi.selected_item, QSlot.Buff_HeatSeek] > 0 {
		my_state = bullet_state.HEATSEEK		
	}
	
	if mi.quickslot[mi.selected_item, QSlot.Mag] == spr_corrosive_mag{
		corrosive = true
	}
	
	if instance_exists(obj_enemy_titan) {
		var titan = instance_nearest(x, y, obj_enemy_titan)
		if place_meeting(x, y, obj_titan_magnetfield) {
			my_state = bullet_state.SOULBINDED		
		}
	}
	
	if instance_exists(obj_enemy_soulbinder) {
		if distance_to_object(obj_enemy_soulbinder) < 50 {
		my_state = bullet_state.SOULBINDED
		}
	}
	
	if mi.quickslot[mi.selected_item, QSlot.Mag] == spr_stasis_mag {
		my_state = bullet_state.STASIS
	}
	
	if mi.quickslot[mi.selected_item, QSlot.Mag] == spr_trackless_mag {
		my_state = bullet_state.TRACKLESS
	}

var px = path_get_x(path_index_current, path_position + 0.01);
var py = path_get_y(path_index_current, path_position + 0.01);

if distance_to_object(obj_player) > max_range {
instance_destroy()
}

switch (my_state) {
	case bullet_state.NORMAL:
		x += lengthdir_x(velocity, image_angle);
		y += lengthdir_y(velocity, image_angle);
	break;
	
	case bullet_state.SMART:
		image_angle = point_direction(x, y, px, py);
		mp_potential_path_object(path, mouse_x, mouse_y, velocity, 3, par_indestructable)
		path_start(path, velocity, path_action_stop, true)
		
		if collision_circle(mouse_x, mouse_y, 10, self, true, false) {
		instance_destroy()
		}
		
		image_alpha -= 0.005
		if image_alpha < 0 {
		instance_destroy()
		}
	break;
	
	case bullet_state.HEATSEEK:
		image_angle = point_direction(x, y, px, py);
	
		var enemy = instance_nearest(x, y, par_enemy)
		
		if instance_exists(par_enemy) {
			mp_potential_path_object(path, enemy.x, enemy.y, velocity, 3, par_indestructable)
			path_start(path, velocity, path_action_stop, true)
		} else {
			instance_destroy()
		}
		
		image_alpha -= 0.005
		if image_alpha < 0 {
		instance_destroy()
		}
	break;
	
	
	case bullet_state.STASIS:
	break;
	
	case bullet_state.DESTROYED:
		with (obj_player) {
		part_type_direction(pt_bullet_trail, 0, 360, 0, 0);
		part_particles_create(sys_bullet_trail, other.x, other.y, pt_bullet_trail, 5)
		}
		instance_destroy();
	break;
	
	case bullet_state.SOULBINDED:
		image_blend = c_fuchsia
		var titan = instance_nearest(x, y, obj_enemy_titan)
		image_angle = point_direction(x, y, px, py);
			
		if instance_exists(obj_enemy_titan) {
		mp_potential_path_object(path, titan.x, titan.y, velocity, 3, par_indestructable)
		path_start(path, velocity, path_action_stop, true)
		} else {
		instance_destroy()
		}
	break;
	
	case bullet_state.TRACKLESS:
		image_angle = point_direction(x, y, px, py);
		if instance_exists(obj_ranged_enemy) {
			target = instance_find(obj_ranged_enemy, irandom(instance_number(obj_ranged_enemy) - 1));
			mp_potential_path_object(path, target.x, target.y, velocity, 3, par_indestructable)
			path_start(path, velocity, path_action_stop, true)
		} else {
			instance_destroy()
		}
		
		image_alpha -= 0.005
		if image_alpha < 0 {
		instance_destroy()
		}
	break;
}

sprite_index = BULLET_medium
with (obj_player) {
	if quickslot[selected_item, QSlot.Gun] != noone {		
		switch (weapon[quickslot[selected_item, QSlot.Gun], GUN.TYPE]) {
			case (WeaponType.Bolt):
				other.sprite_index = BULLET_long
			break;
		}
	}
}

if velocity > 55 {
	sprite_index = BULLET_long
}

if is_melee {
visible = false
}
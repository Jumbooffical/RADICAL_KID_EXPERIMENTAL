timer--;

if (timer >= 0) {
	gravity += 0.1 * mult;
	image_index = 0
} else {
	gravity = 0;
	vspeed = 0;
	image_angle = 0
	image_alpha -= 0.0005
	image_index = 1
	if image_alpha <= 0.5 {
	instance_destroy()
	}
	exit;
}

if left {
	x += 5 * mult;
	image_angle -= 12;
	image_xscale = -1;
} else {
	x -= 5 * mult;
	image_angle += 12;
	image_xscale = 1;
}

switch (casing_type) {
	case WeaponType.Pistol:
	other.sprite_index = small_casing
	break;
		
	case WeaponType.AR:
	other.sprite_index = medium_casing
	allow_smoke = true
	break;
		
	case WeaponType.Bolt:
	other.sprite_index = long_casing
	allow_smoke = true
	break;
	
	case WeaponType.Shotgun:
	other.sprite_index = shotgun_hull
	allow_smoke = true
	break;
	
	case WeaponType.DMR:
	other.sprite_index = long_casing
	allow_smoke = true
	break;
		
	case WeaponType.SMG:
	other.sprite_index = small_casing
	break;
	
	case WeaponType.LMG:
	other.sprite_index = long_casing
	allow_smoke = true
	break;
}

if allow_smoke {
part_particles_create(global.sys_smoke_trail, x, y, global.pt_smoke_trail, 1)
}

if outside_cam {
	instance_destroy()
}
vfx_alarm--
if vfx_alarm <= 0 {
	with instance_create_depth(x, y, depth, obj_vfx_magnet) {
		all_scale = other.scale - 1
	}
	vfx_alarm = 45
}

draw_self()
glow = lerp(glow, 0, 0.015)
draw_sprite_ext(spr_muzzle_shield_glow, 0, x, y, image_xscale, image_yscale, 0, c_white, glow)
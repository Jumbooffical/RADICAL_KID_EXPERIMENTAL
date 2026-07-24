draw_self()
glow = lerp(glow, 0, 0.015)
draw_sprite_ext(spr_muzzle_shield_glow, 0, x, y, image_xscale, image_yscale, 0, c_white, glow)
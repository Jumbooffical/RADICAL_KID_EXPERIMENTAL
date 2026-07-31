function enemy_knockback() {
if knockback_immune exit;	
	
var lerp_str = 0.025
smooth_knockback_x = lerp(smooth_knockback_x, 0, lerp_str)
smooth_knockback_y = lerp(smooth_knockback_y, 0, lerp_str)
x += smooth_knockback_x
y += smooth_knockback_y
}
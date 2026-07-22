

other.crate_hp -= damage
var aim = point_direction(obj_player.x, obj_player.y, other.x, other.y);
var knockback = irandom_range(20, 30)
other.smooth_recoil_x += lengthdir_x(knockback, aim)
other.smooth_recoil_y += lengthdir_y(knockback, aim)

var snd = 0
switch (other.material) {
	case MAT.WOOD:
	snd = snd_box_hurt
	break;
	
	case MAT.METAL:
	snd = random_array(global.deflect_snd)
	break;
}

audio_play_sound(snd, 1, 0, random_range(0.8, 1), 0, random_range(0.8, 1))
instance_destroy()
if !other.has_aimed exit
if !instance_exists(par_enemy) exit;
var nearest = instance_nearest(x, y, par_enemy)

//if dot_received > 1 {
//if nearest.head_immune exit;
//nearest.enemy_hp -= 9999
//instance_destroy()
//instance_destroy(other)
//}


if vulnerable <= 0 exit;
if nearest.head_immune exit;
var dmg = obj_player.stat.damage_output * 3
nearest.enemy_hp -= dmg
nearest.spotted = true

with instance_create_depth(x, y, depth, obj_damage_text) {
	text = round(dmg)
	col = c_red
	max_scale = 10
}

var gain = 0
gain = random_range(2, 2.5)
if sprite_index == BULLET_long {
	gain = random_range(15, 15.5)
}

audio_play_sound(snd_headshot, 1, 0, gain, 0, random_range(1.5, 1.8))
instance_destroy(other)
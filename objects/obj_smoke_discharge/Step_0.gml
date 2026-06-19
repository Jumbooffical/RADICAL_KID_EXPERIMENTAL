timer--

if timer < 0 {
	if radius > max_radius || stop {
	radius -= 0.35
	stop = true
	}
	if !stop {
	radius += 0.3
	}

size = (radius * 0.035)
part_type_size(global.pt_smoke_cloud, size, size, 0, 0);
if !global.pathfinding_debug {
	if part_alarm == 0 {
	part_particles_create(global.sys_smoke_cloud, x, y, global.pt_smoke_cloud, 3)
	}
}}

part_alarm--
if part_alarm < 0 {
part_alarm = part_interval
}

if collision_circle(x, y, radius, obj_player, true, false) {
obj_player.is_blind = true
}

if timer == 0 {
audio_play_sound(snd_smoke_discharge, 1, 0, 1, 0, 0.6)
}

if radius < 0 {
instance_destroy()
}

image_xscale = radius / 75
image_yscale = radius / 75

if follow_enemy && instance_exists(obj_enemy_assassin) {
	var ASS = instance_nearest(x, y, obj_enemy_assassin)
	x = ASS.x
	y = ASS.y
}
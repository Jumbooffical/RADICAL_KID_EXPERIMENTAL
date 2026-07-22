if dot_received > 1 {
part_particles_create(global.sys_spark, other.x, other.y, global.pt_spark, 12);
audio_play_sound(random_array(global.deflect_snd), 1, 0, global.deflect_snd_gain)
hull_hp--
instance_destroy(other)
}
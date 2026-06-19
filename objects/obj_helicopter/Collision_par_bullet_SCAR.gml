if dot_received > 1 {
part_particles_create(global.sys_spark, other.x, other.y, global.pt_spark, 12);
audio_play_sound(global.deflect_snd[irandom(array_length(global.deflect_snd)-1)], 1, 0, 3)
hull_hp--
instance_destroy(other)
}
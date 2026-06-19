part_particles_create(global.sys_spark, other.x, other.y, global.pt_spark, 6);
audio_play_sound(global.shield_impact_snd[irandom(array_length(global.shield_impact_snd)-1)], 1, 0, 3)
instance_destroy(other)
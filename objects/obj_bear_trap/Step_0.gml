if place_meeting(x, y, obj_player) {
trigger = true
}

if trigger {
obj_player.hp -= trap_damage
obj_player.immobilize_timer = debuff_timer
audio_play_sound(snd_beartrap, 1, 0, 1)
instance_destroy()
}
sprite_index = spr_void
buff_list = []

gun_bob_time = 0
current_spd = irandom_range(2, 4)
gun_bob_amount = current_spd * 2;     // how strong the wave is
gun_bob_speed = current_spd * 0.1;    // how fast it waves
smooth_arm_inertia = 0;

prev_item = 0
afterimg = false
array_pushed = false
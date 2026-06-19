depth = 69
mult = random_range(0.6, 1.2)
random_dir = irandom_range(-5, 5)
gravity = -1 * mult

randomize()
timer = irandom_range(31, 32)
collected = false

gun_bob_time = 0
current_spd = irandom_range(2, 4)
gun_bob_amount = current_spd * 2;
gun_bob_speed = current_spd * 0.1;
smooth_arm_inertia = 0;
play_sound = true

cash = 5
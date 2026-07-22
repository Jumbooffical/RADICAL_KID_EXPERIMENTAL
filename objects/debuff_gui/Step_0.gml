x = obj_player.status_x
depth = -22

gun_bob_time += gun_bob_speed / 6;
var target = sin(gun_bob_time) * gun_bob_amount;
smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.03) / random_range(4, 6);
		
y = y + smooth_arm_inertia

debuff_description()
var spacing = 60;

prev_item = array_length(debuff_list);
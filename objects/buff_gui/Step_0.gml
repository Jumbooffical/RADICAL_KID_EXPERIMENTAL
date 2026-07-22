
x = obj_player.status_x
depth = -22

gun_bob_time += gun_bob_speed / 6;
var target = sin(gun_bob_time) * gun_bob_amount;
smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.03) / random_range(4, 6);

y = y + smooth_arm_inertia

buff_description()


prev_item = array_length(buff_list);
if array_length(buff_list) > prev_item {
	array_pushed = true
}
for (var i = 0; i < array_length(buff_list); i++) {
	var d = buff_list[i];
	var spacing = 55;
	
	var draw_x = x - i * spacing;
	var draw_y = y;
	
	if (array_pushed) {
		var sprite = d.sprite
		with instance_create_depth(draw_x, draw_y, depth, gui_afterimage) {
			sprite_index = sprite;
		}
		array_pushed = false
	}
}
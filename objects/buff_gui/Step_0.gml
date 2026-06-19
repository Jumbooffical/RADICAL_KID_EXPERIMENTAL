depth = -22

gun_bob_time += gun_bob_speed / 6;
var target = sin(gun_bob_time) * gun_bob_amount;
smooth_arm_inertia = lerp(smooth_arm_inertia, target, 0.03) / random_range(4, 6);
		
y = y + smooth_arm_inertia

buff_description()
var spacing = 60;
var new_item = array_length(buff_list) > prev_item;

for (var i = 0; i < array_length(buff_list); i++) {
	var d = buff_list[i];
	
	var draw_x = x + i * spacing;
	var draw_y = y;

	if (new_item) {
		var inst = instance_create_depth(draw_x, draw_y, depth, gui_afterimage);
		inst.sprite_index = d.sprite;
		new_item = false;
	}
}
prev_item = array_length(buff_list);
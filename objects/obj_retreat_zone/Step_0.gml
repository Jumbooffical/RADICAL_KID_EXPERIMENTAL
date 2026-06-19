timer--;
var radius = random_range(555, 777)
var dir = irandom(359);

if (timer <= 0) {
    x = clamp(x + lengthdir_x(radius, dir), 0, room_width);
    y = clamp(y + lengthdir_y(radius, dir), 0, room_height);	
    timer = irandom_range(200, 300);
	
	var nearest_nade = instance_nearest(x, y, obj_m62_unpin)
	if instance_exists(obj_m62_unpin) {
	x = clamp(nearest_nade.x + lengthdir_x(radius * 2, dir), 0, room_width);
    y = clamp(nearest_nade.y + lengthdir_y(radius * 2, dir), 0, room_height);
	}
}

if instance_exists(obj_smoke_discharge) {
var nearest = instance_nearest(x, y, obj_smoke_discharge)

	if timer == 0 {
		var rng = irandom_range(0, 100)
	
	if rng < 40 {
		x = nearest.x + radius / 2
		y = nearest.y + radius / 2
	}}
}
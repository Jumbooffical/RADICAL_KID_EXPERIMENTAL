// Initiates is_alerted when they get shot
spotted = true
instance_destroy(other)
part_particles_create(global.sys_spark, x, y, global.pt_spark, 12);
flash_duration = 2

var acc = 30
with instance_create_depth(x, y, depth - 1, obj_deflective_enemybullet) {	
	wID = other.ewID;
	direction = point_direction(x, y, obj_player.x, obj_player.y)+ random_range(-acc, acc)	
	image_angle = direction
	velocity = weapon[other.ewID, GUN.VELOCITY]
	damage = obj_player.damage_output / 3
}
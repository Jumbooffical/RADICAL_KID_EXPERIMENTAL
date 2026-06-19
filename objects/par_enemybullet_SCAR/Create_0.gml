WeaponData()
depth = 0

// Prevent crash when last enemy dies
enemy = instance_nearest(x, y, obj_ranged_enemy);
if (!instance_exists(obj_ranged_enemy)) {
    enemy = instance_nearest(x, y, obj_player);
}

wID = 0
damage = weapon[wID, GUN.DAMAGE];	// Subtract hp when hit
velocity = weapon[wID, GUN.VELOCITY]
visible = false

fire_trail = false
timer = 3

ignore_collision = false
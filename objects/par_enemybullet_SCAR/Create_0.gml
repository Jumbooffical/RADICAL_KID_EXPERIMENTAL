WeaponData()

// Prevent crash when last enemy dies
enemy = instance_nearest(x, y, obj_ranged_enemy);
if (!instance_exists(obj_ranged_enemy)) {
    enemy = instance_nearest(x, y, obj_player);
}

wID = 0
gun_type = 0
damage = weapon[wID, GUN.DAMAGE];
velocity = weapon[wID, GUN.VELOCITY]
visible = false

fire_trail = false
timer = 3

ignore_collision = false
max_dist = 0
heli_id = 0

apply_falloff = false

start_x = x
start_y = y
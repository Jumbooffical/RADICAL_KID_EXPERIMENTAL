// Initiates is_alerted when they get shot
if my_state = STATE.DODGE
|| my_state = STATE.TELEPORT exit;
spotted = true
part_particles_create(global.sys_blood_mist, x, y, global.pt_blood_mist, irandom_range(3, 5))
instance_destroy(other)
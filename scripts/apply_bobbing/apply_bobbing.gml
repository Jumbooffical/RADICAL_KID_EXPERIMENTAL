function apply_bobbing(_speed, _dist) {
	gun_bob_time += gun_bob_speed * _speed;
    var target = sin(gun_bob_time) * gun_bob_amount * _dist;
    return lerp(smooth_arm_inertia, target, 0.15);
}
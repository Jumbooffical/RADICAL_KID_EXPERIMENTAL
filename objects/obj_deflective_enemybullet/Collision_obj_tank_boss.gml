// Horizontal collision
if (place_meeting(x + lengthdir_x(velocity, direction), y, par_wall)) {
    direction = 180 - direction + irandom_range(-10, 10);
}

// Vertical collision
if (place_meeting(x, y + lengthdir_y(velocity, direction), par_wall)) {
    direction = -direction + irandom_range(-10, 10);
}
ricochet_count++
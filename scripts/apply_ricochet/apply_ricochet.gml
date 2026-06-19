function apply_ricochet(obj) {
	if (place_meeting(x + lengthdir_x(velocity, direction),
	                  y + lengthdir_y(velocity, direction),
	                  obj))
	{
	    // Horizontal collision
	    if (place_meeting(x + lengthdir_x(velocity, direction), y, obj)) {
	        direction = 180 - direction + irandom_range(-ricochet_accuracy, ricochet_accuracy);
	    }

	    // Vertical collision
	    if (place_meeting(x, y + lengthdir_y(velocity, direction), obj)) {
	        direction = -direction + irandom_range(-ricochet_accuracy, ricochet_accuracy);
	    }
		ricochet_count++
	}
}
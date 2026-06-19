// Sets variables to initiate Flee and an Alarm to begin is_alerted again
is_alerted = false;
justrun = false;

// Only handle one side of the collision to avoid jittering
//if (id > other.id) {
//    var push_amt = 10; // how strongly they push away each other, important for preventing softlock
    
//    // Push self away from the other enemy
//    x += lengthdir_x(push_amt, dir);
//    y += lengthdir_y(push_amt, dir);
//}
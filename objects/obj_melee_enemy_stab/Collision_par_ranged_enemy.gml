if (id > other.id) {
    var push_amt = 5; // how strongly they push away each other, important for preventing softlock
    
    // Push self away from the other enemy
    x += lengthdir_x(push_amt, push_dir);
    y += lengthdir_y(push_amt, push_dir);
}